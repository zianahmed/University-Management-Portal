using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Admin_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id;
            id = (string)Session["Userid"];
            ID.Text = id;
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "Select * from Info where id=@id";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                Name.Text = reader.GetString(reader.GetOrdinal("DName"));
                                Email.Text = reader.GetString(reader.GetOrdinal("Email"));
                                Address.Text = reader.GetString(reader.GetOrdinal("IAddress"));
                                PhoneNo.Text = reader.GetString(reader.GetOrdinal("Phone"));
                            }
                        }
                    }
                }

                conn.Dispose();
                conn.Close();
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

    protected void Name_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ID_TextChanged(object sender, EventArgs e)
    {

    }

    protected void PhoneNo_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Email_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Address_TextChanged(object sender, EventArgs e)
    {

    }

}