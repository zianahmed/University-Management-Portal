using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Net;
using System.Xml.Linq;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using Table = System.Web.UI.WebControls.Table;
using System.IO;
using Org.BouncyCastle.Asn1.Ocsp;

public partial class packages_Teacher_Grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string course = Session["Course"].ToString();
            string section = Session["Section"].ToString();
            CName.Text = course;
            Section.Text = section;
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                A:
                string query = "Select Wtype as Type,Weight as 'Weightage' from Weightage where WCourse=@cid AND WSection=@sect";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@cid", course);
                    cmd.Parameters.AddWithValue("@sect", section);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                            if (reader.HasRows)
                            {
                                DataTable dataTable = new DataTable();
                                dataTable.Columns.Add("Type", typeof(string));
                                dataTable.Columns.Add("Weightage", typeof(string));

                                while (reader.Read())
                                {
                                    DataRow row = dataTable.NewRow();
                                    row["Type"] = reader["Type"].ToString();
                                    row["Weightage"] = reader["Weightage"].ToString();
                                    dataTable.Rows.Add(row);
                                }

                                GridView1.DataSource = dataTable;
                                GridView1.DataBind();

                                // Retrieve the TextBox values from the GridView and set them
                                for (int i = 0; i < GridView1.Rows.Count; i++)
                                {
                                    TextBox weightageTextBox = (TextBox)GridView1.Rows[i].FindControl("Weightage");
                                    weightageTextBox.Text = dataTable.Rows[i]["Weightage"].ToString();
                                }
                            }

                            else
                            {
                                reader.Close();
                                query = "Insert into Weightage Values(@cid,@sect,@type1,@num);";
                                using (SqlCommand cmd2 = new SqlCommand(query, conn))
                                {
                                    cmd2.Parameters.AddWithValue("@cid", course);
                                    cmd2.Parameters.AddWithValue("@sect", Section.Text);

                                    cmd2.Parameters.AddWithValue("@type1", "Quiz");
                                    cmd2.Parameters.AddWithValue("@num", "10");
                                    cmd2.ExecuteNonQuery();

                                    cmd2.Parameters["@type1"].Value = "Assignment";
                                    cmd2.Parameters["@num"].Value = "10";
                                    cmd2.ExecuteNonQuery();

                                    cmd2.Parameters["@type1"].Value = "Project";
                                    cmd2.Parameters["@num"].Value = "10";
                                    cmd2.ExecuteNonQuery();

                                    cmd2.Parameters["@type1"].Value = "Mid";
                                    cmd2.Parameters["@num"].Value = "20";
                                    cmd2.ExecuteNonQuery();

                                    cmd2.Parameters["@type1"].Value = "Final";
                                    cmd2.Parameters["@num"].Value = "50";
                                    cmd2.ExecuteNonQuery();
                                goto A;
                                }
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


    protected void Credit_Hours_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Date_TextChanged(object sender, EventArgs e)
    {

    }

    protected void SubmitButton1(object sender, EventArgs r)
    {

        int sum = 0;
        foreach(GridViewRow row in GridView1.Rows)
        {
            TextBox txtnum = (TextBox)row.Cells[1].FindControl("Weightage");
            sum += Convert.ToInt32(txtnum.Text);
        }

        if (sum != 100)
        {
            L1.Visible = true;
            return;
        }

        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                string type = row.Cells[0].Text;
                TextBox txtObtained = (TextBox)row.Cells[1].FindControl("Weightage");
                string obt = txtObtained.Text;


                using (SqlCommand cmd = new SqlCommand("Update Weightage set Weight=@num where Wtype=@typ AND WCourse=@cid AND WSection=@sect;", conn))
                {
                    cmd.Parameters.AddWithValue("@sect", Session["Section"]);
                    cmd.Parameters.AddWithValue("@cid", Session["Course"]);
                    cmd.Parameters.AddWithValue("@num", obt);
                    cmd.Parameters.AddWithValue("@typ", type);
                    cmd.ExecuteNonQuery();
                }
            }
            conn.Close();
            conn.Dispose();
        }

        
        Response.Redirect("Teacher_Main.aspx");
    }

    protected void Temp()
    {
        int sum = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            TextBox txtnum = (TextBox)row.Cells[1].FindControl("Weightage");
            sum += Convert.ToInt32(txtnum.Text);
        }

        if (sum != 100)
        {
            return;
        }

        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                string type = row.Cells[0].Text;
                TextBox txtObtained = (TextBox)row.Cells[1].FindControl("Weightage");
                string obt = txtObtained.Text;


                using (SqlCommand cmd = new SqlCommand("Update Weightage set Weight=@num where Wtype=@typ AND WCourse=@cid AND WSection=@sect;", conn))
                {
                    cmd.Parameters.AddWithValue("@sect", Session["Section"]);
                    cmd.Parameters.AddWithValue("@cid", Session["Course"]);
                    cmd.Parameters.AddWithValue("@num", obt);
                    cmd.Parameters.AddWithValue("@typ", type);
                    cmd.ExecuteNonQuery();
                }
            }
            conn.Close();
            conn.Dispose();
        }
    }
    protected void UpdateGrade(object sender, EventArgs e)
    {
        Temp();
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            using (SqlCommand cmd =  new SqlCommand("UpdateGrade",conn))    
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cid",Session["Course"].ToString());
                cmd.Parameters.AddWithValue("@sect", Session["Section"].ToString());
                cmd.ExecuteNonQuery();
            }
            conn.Close();
            conn.Dispose();
        }

        GradeButton(sender, e);
        Response.Redirect("Teacher_Main.aspx");
    }
    protected void GradeButton(object sender, EventArgs e)
    {
        string course = Session["Course"].ToString();
        string section = Session["Section"].ToString();
        CName.Text = course;
        Section.Text = section;
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand("GradeStudent", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sect", section);
                cmd.Parameters.AddWithValue("@cid", course);

                SqlDataReader reader = cmd.ExecuteReader();

                PdfDocument pdf = new PdfDocument(new PdfWriter(Server.MapPath("~/GradeReport.pdf")));
                Document document = new Document(pdf);

                Paragraph heading = new Paragraph("Grade Report")
                    .SetFontSize(20)
                    .SetBold();
                document.Add(heading);

                string htrh = "Course: " + course + "\tSection: " + section;
                heading = new Paragraph(htrh)
                    .SetFontSize(10)
                    .SetBold();
                document.Add(heading);


                iText.Layout.Element.Table table = new iText.Layout.Element.Table(4);
                table.AddHeaderCell("Roll No");
                table.AddHeaderCell("Name");
                table.AddHeaderCell("Obtained");
                table.AddHeaderCell("Grade");

                while (reader.Read())
                {
                    string rn = reader["Roll No"].ToString();
                    string n = reader["Name"].ToString();
                    string o = reader["Obtained"].ToString();
                    string g = reader["Grade"].ToString();

                    table.AddCell(rn);
                    table.AddCell(n);
                    table.AddCell(o);
                    table.AddCell(g);
                }

                document.Add(table);
                document.Close();

                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=GradeReport.pdf");
                Response.TransmitFile(Server.MapPath("~/GradeReport.pdf"));
                Response.End();
            }
        }
    }
    protected void CountButton(object sender, EventArgs e)
    {
        string course = Session["Course"].ToString();
        string section = Session["Section"].ToString();
        CName.Text = course;
        Section.Text = section;
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand("GradeCount", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sect", section);
                cmd.Parameters.AddWithValue("@cid", course);

                SqlDataReader reader = cmd.ExecuteReader();

                PdfDocument pdf = new PdfDocument(new PdfWriter(Server.MapPath("~/GradeReport.pdf")));
                Document document = new Document(pdf);
                Paragraph heading = new Paragraph("Grade Count Report")
                    .SetFontSize(20)
                    .SetBold();
                document.Add(heading);

                string htrh = "Course: " + course + "\tSection: " + section;
                heading = new Paragraph(htrh)
                    .SetFontSize(10)
                    .SetBold();
                document.Add(heading);



                iText.Layout.Element.Table table = new iText.Layout.Element.Table(2);
                table.AddHeaderCell("Grade");
                table.AddHeaderCell("Count");
                
                while (reader.Read())
                {
                    string rn = reader["Grade"].ToString();
                    int count = reader.GetInt32(reader.GetOrdinal("SCount"));

                    table.AddCell(rn);
                    table.AddCell(count.ToString());
                }

                document.Add(table);
                document.Close();

                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=GradeReport.pdf");
                Response.TransmitFile(Server.MapPath("~/GradeReport.pdf"));
                Response.End();
            }
        }

    }


}