using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Xml.Linq;
using System.Windows.Forms;

public partial class packages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void username_func(object sender, EventArgs e)
    {

    }

    protected void password_func(object sender, EventArgs e)
    {

    }

    protected void SignIn_func(object sender, EventArgs e)
    {
        string id = username.Text;
        string pass=password.Text;
        string type = "";
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "Select * from DUser where DUser.id=@id AND DUser.password=@pass";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@pass", pass);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        if (reader.Read())
                        {
                            Session["Userid"] = id;
                            type = reader.GetString(reader.GetOrdinal("Type"));
                         }
                    }
                    else
                    {
                        conn.Dispose();
                        conn.Close();
                        string errorMessage = "Invalid username or password. Please try again.";
                        string script = "<script type=\"text/javascript\">alert('" + errorMessage + "');</script>";
                        Response.Redirect(Request.RawUrl);
                        return;
                    }

                }
            }
            conn.Dispose();
            conn.Close();
            if (type == "Admin")
                Response.Redirect("Admin_Main.aspx");
            else if (type == "Faculty")
                Response.Redirect("Teacher_Main.aspx");
            else if (type == "Student")
                Response.Redirect("Student_Main.aspx");

        }

    }

    protected void SignUp_func(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}