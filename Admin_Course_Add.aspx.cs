using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Admin_Course_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

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

    protected void Submit_TextChanged(object sender, EventArgs e)
    {
        string sem = Semester.Text;
        string conn = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(conn))
        {
            connection.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox offerCheckBox = row.FindControl("offer") as CheckBox;
                if (offerCheckBox.Checked)
                {
                    string code = row.Cells[0].Text;

                    SqlCommand command = new SqlCommand("INSERT INTO Offered (OCourse, OSemester) VALUES (@OCourse, @OSemester)", connection);
                    command.Parameters.AddWithValue("@OCourse", code);
                    command.Parameters.AddWithValue("@OSemester", sem);
                    command.ExecuteNonQuery();
                }
            }

            connection.Close();
        }
        Response.Redirect("Admin_CourseOffer.aspx");
    }

    protected void GetCourse(object sender, EventArgs e)
    {
        string sem = Semester.Text;
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            SqlCommand command = new SqlCommand("CourseOffer", conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@sem", sem);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();

            conn.Open();
            adapter.Fill(dataTable);
            conn.Close();

            Dictionary<int, bool> checkboxStates = new Dictionary<int, bool>();
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox offerCheckBox = row.FindControl("offer") as CheckBox;
                int rowIndex = row.RowIndex;
                checkboxStates[rowIndex] = offerCheckBox.Checked;
            }

            GridView1.DataSource = dataTable;
            GridView1.DataBind();

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox offerCheckBox = row.FindControl("offer") as CheckBox;
                int rowIndex = row.RowIndex;
                if (checkboxStates.ContainsKey(rowIndex))
                {
                    offerCheckBox.Checked = checkboxStates[rowIndex];
                }
            }
        }
    }
}