using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"]!=null && Request.Cookies["Password"] != null)
        {
            txtUserName.Text = Request.Cookies["UserName"].Value;
            txtPassword.Text = Request.Cookies["Password"].Value;
            CheckBox1.Checked = true;
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sr = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
        using(SqlConnection con=new SqlConnection(sr))
        {
            SqlCommand cmd = new SqlCommand("select * from Users where Username='" + txtUserName.Text + "'and Password='" + txtPassword.Text + "'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    //Remember password and username code
                    Response.Cookies["UserName"].Value = txtUserName.Text;
                    Response.Cookies["Password"].Value = txtPassword.Text;

                    Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
                    
                }
                else
                {
                    Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["UserName"] = txtUserName.Text;
                Response.Redirect("~/UserHome.aspx");

            }
            else
            {
                lblError.Text = "Invalid Usernam or password";
            }
        }
    }
}