using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class packages_Teacher_Marks : System.Web.UI.Page
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


    protected void View_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SubjectSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Subject.SelectedValue == "Select")
            return;
        string selectedValue = Subject.SelectedValue;
        string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
        string subjectName = values[0];
        string section = values[1];
        CourseID.Text = section;
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
                        CourseName.Text = reader["CName"].ToString();
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

    protected void Teacher_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Grade_TextChanged(object sender, EventArgs e)
    {
       if (Subject.SelectedValue == "Select")
            return;
        string selectedValue = Subject.SelectedValue;
        string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
        string subjectName = values[0];
        string section = values[1];
        Session["Course"] = subjectName;
        Session["Section"] = section;
        Response.Redirect("Teacher_Grade.aspx");
    }


    protected void Edit_TextChanged(object sender, EventArgs e)
    {

        if (Subject.SelectedValue == "Select")
            return;
        string selectedValue = Subject.SelectedValue;
        string[] values = selectedValue.Split(new[] { " - " }, StringSplitOptions.None);
        string subjectName = values[0];
        string section = values[1];
        Session["Course"] = subjectName;
        Session["Section"] = section;
        Response.Redirect("Teacher_Evaluate.aspx");
    }


}