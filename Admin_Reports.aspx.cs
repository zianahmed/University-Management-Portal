using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class packages_Admin_Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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

    protected void Year_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SessionSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Student_Section_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_StudentReport.aspx");
    }

    protected void Course_Allocation_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("Admin_TeacherAllocation.aspx");
    }

}