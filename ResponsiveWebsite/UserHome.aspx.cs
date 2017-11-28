using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            lblSuccess.Text = "Login Successfull, Wellcome Join " + Session["UserName"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    protected void btnLogOut_click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Response.Redirect("~/FirstPage.aspx");
    }
}