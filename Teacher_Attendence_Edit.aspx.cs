using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class packages_Teacher_Attendence_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string course = Session["Course"].ToString();
            string section = Session["Section"].ToString();
            Credit_Hours.Text= course + " - " + section;
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("RegStudent", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@cid", course);
                    cmd.Parameters.AddWithValue("@sid", section);

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
                conn.Close();
                conn.Dispose();
            }
           

        }
    }

    protected void Home_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Attendence_TextChanged(object sender, EventArgs e)
    {

    }

    protected void FeedBack_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Marks_TextChanged(object sender, EventArgs e)
    {

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

    protected void SubmitButton(object sender,EventArgs r)
    {
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                string studentId = row.Cells[0].Text; 
                DropDownList ddlAttendance = (DropDownList)row.FindControl("ddlAttendance");
                string attendanceValue = ddlAttendance.SelectedValue;

                using (SqlCommand cmd = new SqlCommand("INSERT INTO Attendance Values(@cid,@sect,@sid,@remarks,@date,@Hrs)", conn))
                {
                    cmd.Parameters.AddWithValue("@sid", studentId);
                    cmd.Parameters.AddWithValue("@sect", Session["Section"]);
                    cmd.Parameters.AddWithValue("@cid", Session["Course"]);
                    cmd.Parameters.AddWithValue("@remarks", attendanceValue);
                    cmd.Parameters.AddWithValue("@date", Date.Text);
                    cmd.Parameters.AddWithValue("@Hrs", Credit_Hours.Text);
                    cmd.ExecuteNonQuery();
                }
            }
            conn.Close();
            conn.Dispose();
        }
        Response.Redirect("Teacher_Attendence.aspx");
    }
}
