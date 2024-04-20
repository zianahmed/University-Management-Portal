using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using Table = System.Web.UI.WebControls.Table;
using static System.Collections.Specialized.BitVector32;
using ListItem = System.Web.UI.WebControls.ListItem;

public partial class packages_Teacher_FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = (string)Session["Userid"];
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

            Subject.Items.Clear();
            Subject.Items.Add("Select");
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand("teachsub", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@tid", id);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string subjectName = reader["Course"].ToString();
                            string section = reader["Section"].ToString();
                            string listItemText = subjectName + " - " + section;
                            Subject.Items.Add(new ListItem(listItemText));
                        }
                    }
                }
                conn.Dispose();
                conn.Close();
            }
        }

    }


    protected void Home_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_Main.aspx");
    }

    protected void Attendence_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_Attendence.aspx");
    }

    protected void FeedBack_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_FeedBack.aspx");
    }

    protected void Marks_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Teacher_Marks.aspx");
    }

    protected void SubjectSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Subject.SelectedValue == "Select")
        {
            Section.Text = "";
            CName.Text = "";
            return;
        }
        string selectedValue = Subject.SelectedValue;
        string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
        string subjectName = values[0];
        string section = values[1];
        Section.Text = section;
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string cmdstr = "Select CName from Course where id=@cid";
            using (SqlCommand cmd = new SqlCommand(cmdstr, conn))
            {
                cmd.Parameters.AddWithValue("@cid", subjectName);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        CName.Text = reader["CName"].ToString();
                    }
                }
            }
            conn.Dispose();
            conn.Close();
        }

    }

    protected void CourseName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CourseID_TextChanged(object sender, EventArgs e)
    {

    }

    protected void View_TextChanged(object sender, EventArgs e)
    {
        if (Subject.SelectedValue == "Select")
            return;
        string selectedValue = Subject.SelectedValue;
        string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
        string course = values[0];
        string section = values[1];
        string tid = Session["Userid"].ToString();
        string tname = Session["TName"].ToString();

        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand("getFb", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@tid", tid);
                cmd.Parameters.AddWithValue("@cid", course);

                SqlDataReader reader = cmd.ExecuteReader();

                PdfDocument pdf = new PdfDocument(new PdfWriter(Server.MapPath("~/FeedBackReport.pdf")));
                Document document = new Document(pdf);

                Paragraph heading = new Paragraph("FeedBack Report")
                    .SetFontSize(20)
                    .SetBold();
                document.Add(heading);

                string htrh = "Course: " + course + "\tTeacher: " + tname;
                heading = new Paragraph(htrh)
                    .SetFontSize(10)
                    .SetBold();
                document.Add(heading);


                iText.Layout.Element.Table table = new iText.Layout.Element.Table(4);
                table.AddHeaderCell("Roll No");
                table.AddHeaderCell("Name");
                table.AddHeaderCell("Points");
                table.AddHeaderCell("Comments");

                while (reader.Read())
                {
                    string rn = reader["Roll No"].ToString();
                    string n = reader["Name"].ToString();
                    string o = reader["Points"].ToString();
                    string a = reader["Comments"].ToString();

                    table.AddCell(rn);
                    table.AddCell(n);
                    table.AddCell(o);
                    table.AddCell(a);
                }

                document.Add(table);
                document.Close();
                
                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=FeedBackeport.pdf");
                Response.TransmitFile(Server.MapPath("~/FeedBackReport.pdf"));
                Response.End();
            }
            conn.Close();
            conn.Dispose();
        }


    }
}