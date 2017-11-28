using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Loging : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string chechUser = "select count(*) from UserRegistration where UserName='" + txtUserName.Text + "'";
            SqlCommand com = new SqlCommand(chechUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkpass = "select Password from UserRegistration where  UserName='" + txtUserName.Text + "'";
                SqlCommand com1 = new SqlCommand(checkpass, conn);
                string password = com1.ExecuteScalar().ToString().Replace(" ","");
                if (password.Equals(txtPassword.Text))
                {
                    Session["new"] = txtUserName.Text;
                    Response.Write("Password Correct");
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("Password not correct.Try again");
                }
                //conn.Close();
            }
            else
            {
                Response.Write("UserName not correct");
            }
           
        }
        catch(Exception ex)
        {
            Response.Write("Error"+ex.Message);
        }
       
        
    }
}