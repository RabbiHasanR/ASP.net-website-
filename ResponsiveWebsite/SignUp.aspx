<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign up form</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--add style sheet R-->
    <link href="css/Custom.css" rel="stylesheet" />
    <!--add style sheet R-->
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <form id="form1" runat="server">
    <div>
      <!-- navigation bar R-->
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
          <div class="container">
              <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="FirstPage.aspx"><span><img alt="Logo" src="image/37587-O1APWM.jpg" height="50" /></span>Rabbi</a>
              </div>
              <!--navigation bar item R-->
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav navbar-right">
                      <li ><a href="FirstPage.aspx">Home</a></li>
                      <li><a href="#">About</a></li>
                      <li><a href="#">Contact</a></li>
                      <!--dropdown list R-->
                      <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                          <ul class="dropdown-menu">
                              <li class="dropdown-header">Men</li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">Shirts</a></li>
                              <li><a href="#">Pants</a></li>
                              <li><a href="#">Denims</a></li>
                              <li role="separator" class="divider"></li>
                              <li class="dropdown-header">Women</li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">Top</a></li>
                              <li><a href="#">Leggings</a></li>
                              <li><a href="#">Denims</a></li>
                          </ul>
                      </li>
                      <!--dropdownlist R-->
                      <li><a href="#">Register</a></li> 
                  </ul>
              </div>
              <!--navigation bar item R-->
          </div>
      </div>
        <!--navigation bar R-->
        </div>
        <!--Sign up-->
           <div class="center-page">
               <label class="col-xs-11">Username</label>
               <div class="col-xs-11">
               <asp:TextBox ID="txtUserName" runat="server" Class="form-control" placeholder="Enter Username"></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required username" CssClass="text-danger" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>   
               <label class="col-xs-11">Password</label>
               <div class="col-xs-11">
               <asp:TextBox ID="txtPassword" runat="server" Class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requird Password" ControlToValidate="txtPassword" ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
               </div>
               
               <label class="col-xs-11">Confirm Password</label>
               <div class="col-xs-11">
               <asp:TextBox ID="txtConfirmPassword" runat="server" Class="form-control" placeholder="Enter Confirm password" TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Confirm Password" CssClass="text-danger" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match password" CssClass="text-danger" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator>
              
               </div>
               <label class="col-xs-11">Name</label>
               <div class="col-xs-11">
               <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Name"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required name" CssClass="text-danger" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               <label class="col-xs-11">Email</label>
               <div class="col-xs-11">
               <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required email" CssClass="text-danger" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               
               <div class="col-xs-11 space-vert">
               <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Sign Up" OnClick="Button1_Click" />
               </div>

               </div>
        <!--Sign up-->
          <!--footer R-->
        <hr />
        <footer  class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2017 Rabbi hasan &middot;<a href="FirstPage.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Product</a>&middot;</p>
            </div>
        </footer>
        <!--footer R-->
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
     </body>
</html>
