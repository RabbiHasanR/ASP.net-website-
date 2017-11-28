<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

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
                      <li class="active"><a href="FirstPage.aspx">HOme</a></li>
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
                      <li ><a href="SignIn.aspx">Sign In</a></li>
                  </ul>
              </div>
              <!--navigation bar item R-->
          </div>
      </div>
        <!--navigation bar R-->
        <!--carousel R-->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="image/image7.jpg" alt=""/>
      <div class="carousel-caption">
        <h3>Nature</h3>
          <p>Beautiful view</p>
      </div>
    </div>
    <div class="item">
      <img src="image/image2.jpg" alt="shopping image 2"/>
      <div class="carousel-caption">
        <h3>Shopping</h3>
          <p>Shopping with beautiful lady</p>
          <p><a class="btn btn-lg btn-primary"href="SecondPage.aspx"role="button">Join With Us!</a></p>
      </div>
    </div>
    ...<div class="item">
      <img src="image/image6.jpg" alt="shoopping image 3"/>
      <div class="carousel-caption">
        <h3>Bear</h3>
          <p>Cute and Dangerous</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
         <!--carousel-->
    </div>
        <br/>
        <br/>
        <!-- middel contents R-->
        <div class="container center" >
            <div class="col-lg-4">
              <img src="image/iphone6.jpg" alt="Iphone 6" width="140" height="140" />
                <h2>IPhone 6</h2>
                <p>Apple iPhone 6. Apple iPhone 6 smartphone was launched in September 2014. The phone comes with a 4.70-inch touchscreen display with a resolution of 750 pixels by 1334 pixels at a PPI of 326 pixels per inch. ... The phone packs 16GB of internal storage cannot be expanded.</p>
                <p ><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
            </div>
             <div class="col-lg-4">
              <img src="image/cloths1.jpg" alt="Iphone 6" width="140" height="140" />
                <h2>Cloths</h2>
                <p>A veritable encyclopedia of men’s clothing brands, the U.K.’s END carries dependable mid-level brands like A.P.C. and Rag & Bone and streetwear signatures like Bape and Stussy alongside a roster of luxury brands that include Valentino, Thom Browne, VISVIM and Rick Owens. The store also constantly updates its selection, adding upstarts whose waves have begun to crest—this season saw the additions of New York’s Aimé Leon Dore, offbeat footwear from Italian brand Casbia and running-centric gear like Satisfy. The hardest part about shopping at END is actually making a decision.</p>
                <p ><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
            </div>
             <div class="col-lg-4">
              <img src="image/iphone6.jpg" alt="Iphone 6" width="140" height="140" />
                <h2>IPhone 6</h2>
                <p>Apple iPhone 6. Apple iPhone 6 smartphone was launched in September 2014. The phone comes with a 4.70-inch touchscreen display with a resolution of 750 pixels by 1334 pixels at a PPI of 326 pixels per inch. ... The phone packs 16GB of internal storage cannot be expanded.</p>
                <p ><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
            </div>
        </div>
         <!-- middel contents R-->
        <!--footer R-->
        <hr />
        <footer>
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
</body>
</html>
