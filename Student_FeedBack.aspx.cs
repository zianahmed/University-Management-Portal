using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class packages_Student_FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_func(object sender, EventArgs e)
    {
        float total = 0;
        for (int i = 1; i <= 4; i++)
        {
            int temp = 5;
            if (i == 2)
                temp = 6;
            if (i == 4)
                temp = 4;
            for (int j = 0; j <= temp; j++)
            {
                for (int k = 1; k <= 5; k++)
                {
                    string radioButtonId = "R" + i + j + k;
                    RadioButton radioButton = FindControl(radioButtonId) as RadioButton;

                    // Check if the radio button exists and is checked
                    if (radioButton != null && radioButton.Checked)
                    {
                        int value = Convert.ToInt32(radioButton.Text);
                        total += value;
                    }
                }
            }
        }

        string id = (string)Session["Userid"];
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        string teacher = (string)Session["Teacher"];
        string course = (string)Session["Course"];

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();

            using (SqlCommand cmd = new SqlCommand("setfb", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sid", id);
                cmd.Parameters.AddWithValue("@tid", teacher);
                cmd.Parameters.AddWithValue("@cid", course);
                cmd.Parameters.AddWithValue("@fbscore", total.ToString());
                cmd.Parameters.AddWithValue("@fbcomments", MyBox.Text);
                int rowsAffected = cmd.ExecuteNonQuery();
            }
        }

        Response.Redirect("Student_Feed.aspx");
    }
}
