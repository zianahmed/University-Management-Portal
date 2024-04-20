using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class packages_Signup_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void name_func(object sender, EventArgs e)
    {

    }

    protected void email_func(object sender, EventArgs e)
    {

    }

    protected void PhoneNo_func(object sender, EventArgs e)
    {

    }

    protected void Address_func(object sender, EventArgs e)
    {

    }

    protected void password_func(object sender, EventArgs e)
    {

    }

    protected void SignUp_func(object sender, EventArgs e)
    {
        int id;
        string Fname = name.Text;
        string Aemail = Email.Text;
        string Phone = PhoneNo.Text;
        string Addr = Address.Text;
        string pas = password.Text;
        string dept = Department.SelectedValue.ToUpper();
        string pos = Position.SelectedValue.ToUpper();
        string type = "Faculty";
        string connStr = "Data Source=DESKTOP-7F3GD9U\\SQLEXPRESS;Initial Catalog=Flex;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "Select dbo.AdminSignup () as count;";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                id = Convert.ToInt32(cmd.ExecuteScalar());
            }
            query = "Insert into DUser values(@id,@pass,@type)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@pass", pas);
                cmd.Parameters.AddWithValue("@type", type);
                cmd.ExecuteNonQuery();
            }
            query = "Insert into Info values(@id,@name,@email,@address,@phone)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@name", Fname);
                cmd.Parameters.AddWithValue("@email", Aemail);
                cmd.Parameters.AddWithValue("@address", Addr);
                cmd.Parameters.AddWithValue("@phone", Phone);
                cmd.ExecuteNonQuery();
            }

            query = "Insert into Teacher values(@id,@dept,@pos)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@dept", dept);
                cmd.Parameters.AddWithValue("@pos", pos);
                cmd.ExecuteNonQuery();
            }

            string txt = "Your ID is " + id;
            MessageBox.Show(txt);
            conn.Dispose();
            conn.Close();

        }
        Response.Redirect("Login.aspx");
    }

    protected void Position_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Depatment_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}