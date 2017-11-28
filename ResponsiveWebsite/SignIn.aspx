<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In Form</title>

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
                      <li ><a href="FirstPage.aspx">HOme</a></li>
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
                      <li ><a href="SignUp.aspx">Sign Up</a></li> 
                      <li class="active"><a href="Login.aspx">Sign In</a></li>
                  </ul>
              </div>
              <!--navigation bar item R-->
          </div>
      </div>

        <!--navigation bar R-->
    </div>
        <!-- Sign In-->
        <div class="container">
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="UserName"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required field username" ControlToValidate="txtUserName" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required field password" ControlToValidate="txtPassword" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="form-group">
                     <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Password"></asp:Label>
                </div>
                </div>
                <div class="form-group">
                     <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-default" OnClick="btnLogin_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
         <!-- Sign In-->
  </form>
   <!--footer R-->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;2017 Rabbi hasan &middot;<a href="FirstPage.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Product</a>&middot;</p>
            </div>
        </footer>
        <!--footer R-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>