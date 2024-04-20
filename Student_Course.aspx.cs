using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Student_Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (true)
        {
            string user = Session["Userid"].ToString();
            string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT TOP(1) OSemester AS Semester FROM Offered ORDER BY RIGHT(OSemester, 4) DESC,          CASE WHEN LEFT(OSemester, CHARINDEX(' ', OSemester) - 1) = 'Spring' THEN 1 ELSE 0 END DESC";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                Semester.Text = reader["Semester"].ToString();
                            }
                        }

                        else
                        {
                        }

                    }
                    

                    SqlCommand command = new SqlCommand("SelectCourse", conn);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@sid", user);
                    command.Parameters.AddWithValue("@sem", Semester.Text);

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();

                    adapter.Fill(dataTable);
                    conn.Close();

                    if (dataTable.Rows.Count == 1 && dataTable.Rows[0]["Code"] is DBNull)
                    {
                        L1.Visible=true;
                    }


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
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Submit_func(object sender, EventArgs e)
    {
        string user = Session["Userid"].ToString();
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

                    SqlCommand command = new SqlCommand("INSERT INTO Registered (RCourse, RStudent) VALUES (@cid, @sid)", connection);
                    command.Parameters.AddWithValue("@sid", user);
                    command.Parameters.AddWithValue("@cid", code);
                    command.ExecuteNonQuery();
                }
            }

            connection.Close();
        }
        Home_TextChanged(sender, e);
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

}