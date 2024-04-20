using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Student_Feed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = (string)Session["Userid"];
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

            Subject.Items.Clear();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand("sreg", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@sid", id);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string subjectName = reader["Course"].ToString();
                            string section = reader["Section"].ToString();
                            string listItemText = subjectName + " - " + section; // Combine the two values
                            Subject.Items.Add(new ListItem(listItemText)); // Use subjectName as the value
                        }
                    }
                }

            }
        }
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

    protected void SubjectSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedValue = Subject.SelectedValue;
        string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
        string Courseid = values[0];
        string section = values[1];

        string tid = "";
        string tname = "";
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "Select TTeacher as 'tid' from Teaches where Tcourse=@cid AND TSection=@sid";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@cid", Courseid);
                cmd.Parameters.AddWithValue("@sid", section);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {
                            tid = reader.GetDecimal(reader.GetOrdinal("tid")).ToString();
                        }
                    }

                }
            }
            conn.Dispose();
            conn.Close();
        }
    
        connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "Select CName from Course where id=@cid";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@cid", Courseid);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {
                            CourseName.Text = reader.GetString(reader.GetOrdinal("CName"));
                        }
                    }

                }
            }
            conn.Dispose();
            conn.Close();
            Session["Teacher"] = tid;
            Session["Course"] = CourseID.Text;
        }

        connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "Select * from info where id=@id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", tid);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {
                            tname = reader.GetString(reader.GetOrdinal("DName"));
                        }
                    }

                }
            }
            conn.Dispose();
            conn.Close();
        }


        Teacher.Text = tname;
        CourseID.Text = Courseid;
    }
    protected void CourseName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CourseID_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Teacher_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Give_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Student_FeedBack.aspx");
    }
}