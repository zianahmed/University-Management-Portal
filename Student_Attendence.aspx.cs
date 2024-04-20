using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Student_Attendence : System.Web.UI.Page
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
        string id = (string)Session["Userid"];
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand("attend", conn))
            {
                string selectedValue = Subject.SelectedValue;
                string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
                string subjectName = values[0];
                string section = values[1]; 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sid", id);
                cmd.Parameters.AddWithValue("@cid", subjectName);
                cmd.Parameters.AddWithValue("@sect", section);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = null;
                    GridView1.DataBind();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    
    }

    

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}