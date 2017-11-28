using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Guid newGuid = Guid.NewGuid();
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
        using(SqlConnection con=new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into Users values('"+newGuid.ToString()+"','" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtName.Text + "','" + txtEmail.Text + "')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}