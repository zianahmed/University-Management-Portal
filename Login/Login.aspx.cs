using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Main.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }



    protected void username_TextChanged(object sender, EventArgs e)
    {

    }
}