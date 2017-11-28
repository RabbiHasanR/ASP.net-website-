using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string chechUser = "select count(*) from UserRegistration where UserName='"+txtUserName.Text+"'";
            SqlCommand com = new SqlCommand(chechUser,conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User Already Exits");
            }
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertData = "insert into UserRegistration(Id,UserName,Email,Password,Country)values(@Id,@userName,@email,@password,@country)";
            SqlCommand com = new SqlCommand(insertData, conn);
            com.Parameters.AddWithValue("@Id", newGuid.ToString());
            com.Parameters.AddWithValue("@userName", txtUserName.Text);
            com.Parameters.AddWithValue("@email", txtEmail.Text);
            com.Parameters.AddWithValue("@password", txtPassword.Text);
            com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("Admin.aspx");
            Response.Write("Registration Successful");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error"+ex.ToString());
        }
        
        
        
    }
}