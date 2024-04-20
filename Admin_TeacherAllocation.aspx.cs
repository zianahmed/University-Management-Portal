using iText.Kernel.Pdf;
using iText.Layout.Element;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using Table = System.Web.UI.WebControls.Table;
using System.IO;
using Org.BouncyCastle.Asn1.Ocsp;
using static System.Collections.Specialized.BitVector32;
using static iText.StyledXmlParser.Jsoup.Select.Evaluator;

public partial class packages_Admin_TeacherAllocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Semester.Items.Clear();
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "Select Distinct Semester from Section";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Semester.Items.Add(reader["Semester"].ToString());
                            }
                        }
                        else
                        {
                        }

                    }
                }

            }


        }
    }
    protected void Home_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Main.aspx");
    }

    protected void Courses_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_CourseOffer.aspx");
    }

    protected void Students_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Reports.aspx");
    }

    protected void Year_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SessionSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        Course.Items.Clear();
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "Select C.id + ' - ' + C.CName as 'Course' from Teaches T Inner Join Section S On T.TSection=S.SName Inner Join Course C On T.TCourse=C.id where S.Semester=@sem;";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@sem", Semester.SelectedValue);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Course.Items.Add(reader["Course"].ToString());
                        }
                    }
                    else
                    {
                    }

                }
            }

        }

    }
    protected void Generate_TextChanged(object sender, EventArgs e)
    {
        if (Semester.SelectedValue == "Select")
            return;
        string sem = Semester.SelectedValue;
        string cid = Course.SelectedValue.Substring(0,6);
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand("CourseReport", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sem", sem);
                cmd.Parameters.AddWithValue("@cid", cid);
                SqlDataReader reader = cmd.ExecuteReader();

                PdfDocument pdf = new PdfDocument(new PdfWriter(Server.MapPath("~/TAReport.pdf")));
                Document document = new Document(pdf);

                Paragraph heading = new Paragraph("Teacher Allocation Report")
                    .SetFontSize(20)
                    .SetBold();
                document.Add(heading);

                string htrh = "Semester: " + sem;
                heading = new Paragraph(htrh)
                    .SetFontSize(10)
                    .SetBold();
                document.Add(heading);

                htrh = "Course: "+ Course.SelectedValue;
                heading = new Paragraph(htrh)
                    .SetFontSize(10)
                    .SetBold();
                document.Add(heading);


                iText.Layout.Element.Table table = new iText.Layout.Element.Table(2);
                table.AddHeaderCell("Name");
                table.AddHeaderCell("Section");
                
                while (reader.Read())
                {
                    string rn = reader["Name"].ToString();
                    string n = reader["Section"].ToString();
                    
                    table.AddCell(rn);
                    table.AddCell(n);
                }

                document.Add(table);
                document.Close();

                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=TAReport.pdf");
                Response.TransmitFile(Server.MapPath("~/TAReport.pdf"));
                Response.End();
            }
        }

    }

    protected void DropDownSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}