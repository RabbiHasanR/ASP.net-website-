using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            lblShow.Text += Session["new"].ToString();
        }
        else
        {
            Response.Redirect("Loging.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Response.Redirect("Loging.aspx");
    }
}