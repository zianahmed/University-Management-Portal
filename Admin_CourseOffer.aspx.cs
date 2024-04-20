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
using System.IO;
using Org.BouncyCastle.Asn1.Ocsp;
using static System.Collections.Specialized.BitVector32;
using static iText.StyledXmlParser.Jsoup.Select.Evaluator;

public partial class packages_Admin_CourseOffer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Session.Items.Clear();
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "Select Distinct OSemester from Offered";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Session.Items.Add(reader["OSemester"].ToString());
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

    protected void Report_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Reports.aspx");
    }

    protected void Courses_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_CourseOffer.aspx");
    }

    protected void Home_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Main.aspx");
    }

    protected void YearSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SessionSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Registered_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Add_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Course_Add.aspx");  
    }

    protected void Offered_TextChanged(object sender, EventArgs e)
    {
        if (Session.SelectedValue == "Select")
            return;
        string sem = Session.SelectedValue;
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand("OfferedReport", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sem", sem);
                SqlDataReader reader = cmd.ExecuteReader();

                PdfDocument pdf = new PdfDocument(new PdfWriter(Server.MapPath("~/OfferedReport.pdf")));
                Document document = new Document(pdf);

                Paragraph heading = new Paragraph("Offered Courses")
                    .SetFontSize(20)
                    .SetBold();
                document.Add(heading);

                string htrh = "Semester: " + sem;
                heading = new Paragraph(htrh)
                    .SetFontSize(10)
                    .SetBold();
                document.Add(heading);


                iText.Layout.Element.Table table = new iText.Layout.Element.Table(3);
                table.AddHeaderCell("Course Code");
                table.AddHeaderCell("Course");
                table.AddHeaderCell("Crd Hrs");
                
                while (reader.Read())
                {
                    string rn = reader["Course Code"].ToString();
                    string n = reader["Course"].ToString();
                    string o = reader["Crd Hrs"].ToString();
                    
                    table.AddCell(rn);
                    table.AddCell(n);
                    table.AddCell(o);
                }

                document.Add(table);
                document.Close();

                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=OfferedReport.pdf");
                Response.TransmitFile(Server.MapPath("~/OfferedReport.pdf"));
                Response.End();
            }
        }



    }
}