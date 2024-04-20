using System;
using System.Data.SqlClient;

public partial class packages_Student_Main : System.Web.UI.Page
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
                string query = "Select * from Student where id=@id";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                Department.Text = reader.GetString(reader.GetOrdinal("Dept"));
                                Degree.Text = reader.GetString(reader.GetOrdinal("Degree"));
                                Batch.Text = reader.GetString(reader.GetOrdinal("Batch"));
                                CGPA.Text = reader.GetDecimal(reader.GetOrdinal("GPA")).ToString();
                            }
                        }
                    }
                }
                query = "Select * from Info where id=@id";
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

    protected void Batch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Degree_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Department_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CGPA_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Home_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Attendence_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Attendence.aspx");
    }

    protected void Course_Registration_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_Course.aspx");
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
}