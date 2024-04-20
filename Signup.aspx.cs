using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Admin_func(object sender, EventArgs e)
    {
        Response.Redirect("Signup_Admin.aspx");
    }

    protected void Faculty_func(object sender, EventArgs e)
    {
        Response.Redirect("Signup_Faculty.aspx");
    }

    protected void Student_func(object sender, EventArgs e)
    {
        Response.Redirect("Signup_Student.aspx");
    }
}