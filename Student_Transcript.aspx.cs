using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Xml.Linq;
using System.Data;

public partial class packages_Student_Transcript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = (string)Session["Userid"];
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "trans";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sid", id);
                    cmd.Connection = conn;

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        CGPA.Text = id;

                        GridView1.DataSource = null;
                        GridView1.DataBind();

                        // Grouping the DataTable by Semester
                        var groupedData = dt.AsEnumerable()
                            .GroupBy(row => row.Field<string>("Semester"))
                            .Select(group => new
                            {
                                Semester = group.Key,
                                Data = group.CopyToDataTable(),
                                GPA = CalculateSemesterGPA(group.CopyToDataTable())
                            });

                        foreach (var group in groupedData)
                        {
                            GridView gridView = new GridView();
                            gridView.DataSource = group.Data;
                            gridView.RowDataBound += GridView_RowDataBound; 
                            gridView.DataBind();
                            gridView.CssClass = "gridview";
                            gridView.BackColor = System.Drawing.Color.White;
                            gridView.BorderColor = System.Drawing.ColorTranslator.FromHtml("#E7E7FF");
                            gridView.BorderStyle = BorderStyle.None;
                            gridView.BorderWidth = Unit.Pixel(1);
                            gridView.CellPadding = 3;
                            gridView.GridLines = GridLines.Horizontal;

                            gridView.AlternatingRowStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#F7F7F7");
                            gridView.FooterStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#B5C7DE");
                            gridView.FooterStyle.ForeColor = System.Drawing.ColorTranslator.FromHtml("#4A3C8C");
                            gridView.HeaderStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#4A3C8C");
                            gridView.HeaderStyle.Font.Bold = true;
                            gridView.HeaderStyle.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F7F7F7");
                            gridView.PagerStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#E7E7FF");
                            gridView.PagerStyle.ForeColor = System.Drawing.ColorTranslator.FromHtml("#4A3C8C");
                            gridView.PagerStyle.HorizontalAlign = HorizontalAlign.Right;
                            gridView.RowStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#E7E7FF");
                            gridView.RowStyle.ForeColor = System.Drawing.ColorTranslator.FromHtml("#4A3C8C");
                            gridView.SelectedRowStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#738A9C");
                            gridView.SelectedRowStyle.Font.Bold = true;
                            gridView.SelectedRowStyle.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F7F7F7");
                            gridView.SortedAscendingCellStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#F4F4FD");
                            gridView.SortedAscendingHeaderStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#5A4C9D");
                            gridView.SortedDescendingCellStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#D8D8F0");
                            gridView.SortedDescendingHeaderStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#3E3277");

                            Panel containerPanel = new Panel();
                            containerPanel.CssClass = "semester-container";

                            Label gpaLabel = new Label();
                            gpaLabel.CssClass = "semester-gpa";
                            gpaLabel.Text = "SGPA: <strong>" + group.GPA.ToString("0.00") + "</strong>";
                            containerPanel.Controls.Add(gpaLabel);

                            Label semesterLabel = new Label();
                            semesterLabel.CssClass = "semester-label";
                            semesterLabel.Text = "               Semester: " + group.Semester;
                            containerPanel.Controls.Add(semesterLabel);

                            PlaceHolder1.Controls.Add(containerPanel);

                            PlaceHolder1.Controls.Add(gridView);
                        }

                        double totalPoints = 0;
                        double totalCreditHours = 0;

                        foreach (DataRow row in dt.Rows)
                        {
                            double points = Convert.ToDouble(row["Points"]);
                            double creditHours = Convert.ToDouble(row["Credit Hours"]);

                            totalPoints += points * creditHours;
                            totalCreditHours += creditHours;
                        }

                        double gpa = totalPoints / totalCreditHours;
                        CGPA.Text = gpa.ToString("0.00");
                    }
                }
            }
        }
    }

    private double CalculateSemesterGPA(DataTable dt)
    {
        double totalPoints = 0;
        double totalCreditHours = 0;

        foreach (DataRow row in dt.Rows)
        {
            double points = Convert.ToDouble(row["Points"]);
            double creditHours = Convert.ToDouble(row["Credit Hours"]);

            totalPoints += points * creditHours;
            totalCreditHours += creditHours;
        }

        return totalPoints / totalCreditHours;
    }

    protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[2].Visible = false;
    }
    protected void Home_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Main.aspx");
    }

    protected void Attendence_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Attendence.aspx");
    }

    protected void Course_Registration_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Marks_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Marks.aspx");
    }

    protected void Transcript_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Transcript.aspx");
    }

    protected void FeedBack_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Feed.aspx");
    }

    protected void CGPA_TextChanged(object sender, EventArgs e)
    {

    }
}