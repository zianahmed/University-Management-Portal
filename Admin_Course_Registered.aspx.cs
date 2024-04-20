using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Admin_Course_Registered : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Section_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Home_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Main.aspx");
    }

    protected void Courses_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_CourseOffer.aspx");
    }

    protected void Students_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Reports.aspx");
    }

    protected void Submit_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void CourseSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void CoordinatorSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TeacherSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}