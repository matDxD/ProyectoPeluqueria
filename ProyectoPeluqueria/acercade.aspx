<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acercade.aspx.cs" Inherits="ProyectoPeluqueria.acercade" %>


<!DOCTYPE html>

<html>
<head runat="server">


    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Look De Ensueño</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- owl css -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- responsive-->
    <link rel="stylesheet" href="css/responsive.css">
  <link rel="stylesheet" href="css/menu.css"/>
     <link rel="stylesheet" href="css/login.css"/>
    <!-- awesome fontfamily -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body class="main-layout">
    <!-- loader  -->

        <!-- end loader -->

        <div class="sidebar"> 
            <!-- Sidebar  -->
           <nav id="sidebar">

                <div id="dismiss">
                    <i class="fa fa-arrow-left"></i>
                </div>

                <ul class="list-unstyled components">

                 	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">
               
                     	<div class="signup">
                   	<form>
					<label for="chk" aria-hidden="true">Sign up</label>
					<input type="text" name="txt" placeholder="User name" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<button>Sign up</button>
                           	</div>
				</form>
			
			<div class="login">
				<form>
					<label for="chk" aria-hidden="true">Login</label>
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<button>Login</button>
				</form>
                </div>
                
                </ul>

            </nav>
        </div>

        <div id="content">
            <!-- header -->
            <header>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="full">
                                <a class="logo" href="Home.aspx"><img src="images/logo.png" alt="#" /></a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="full">
                                <div class="right_header_info">
                                    <ul>
                                        <li class="dinone"><img style="margin-right: 15px;margin-left: 15px;" src="images/phone_icon.png" alt="#"><a href="#">987-654-3210</a></li>
                                        <li class="dinone"><img style="margin-right: 15px;" src="images/mail_icon.png" alt="#"><a href="#">demo@gmail.com</a></li>

                                        <li class="dinone"><img style="margin-right: 15px;" src="images/search_icon.png" alt="#"></li>
                                        <li class="button_user"> <a class="button" href="Clientes.aspx">Cruds</a></li>

                                        <li>
                                            <button type="button" id="sidebarCollapse">
                                                <a href="#">Cuenta</a>
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- end header -->
            <div class="yellow_bg">
             
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                                                <nav class="navMenu">
     <a href="Home.aspx">Home</a>
       
      <a href="service.aspx">Servicios</a>

     <a href="precios.aspx">Precios</a>

     <a href="Empleados.aspx">Empleados</a>

      <a href="acercade.aspx">Cliente</a>

      <div class="dot"></div>
    </nav>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- about -->
    <form runat="server">
            <div id="about" class="about">
               <!-- <div class="container">
               
                      
                     <!--       <div class="about_box"> -->
     <div>

            <asp:GridView ID="Datos" runat="server" AutoGenerateColumns="False" DataKeyNames="cedulac" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="cedulac" HeaderText="cedulac" ReadOnly="True" SortExpression="cedulac" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ProyectoPeluqueria.ModeloCDataContext" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting" TableName="cliente">
            </asp:LinqDataSource>
            <br />
            <br />
        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
            <!-- end about -->

            <!-- footer -->
            <fooetr>
                <div class="footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="footer_logo">
                                    <a href="Home.aspx"><img src="images/logo1.png" alt="logo" /></a>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="address">
                                    <h3>address</h3>
                                    <p>
                                        Address: 73 Canal Street, New York, NY
                                        <br> Tel: +1 123 456 789
                                        <br> Fax: +1 123 456 789
                                        <br> Email: support@demo.com</p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <ul class="lik">

                                    <li> <img src="images/fb.png" alt="#" /></li>
                                    <li> <img src="images/tw.png" alt="#" /></li>
                                    <li> <img src="images/you.png" alt="#" /></li>

                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="copyright">
                        <div class="container">
                            <p>© 2019 All Rights Reserved. <a href="https://html.design/"> Free Html Templates</a></p>
                        </div>
                    </div>
                </div>

            </fooetr>
            <!-- end footer -->

        </div>

        <div class="overlay"></div>
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

        <script src="js/jquery-3.0.0.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#dismiss, .overlay').on('click', function() {
                    $('#sidebar').removeClass('active');
                    $('.overlay').removeClass('active');
                });

                $('#sidebarCollapse').on('click', function() {
                    $('#sidebar').addClass('active');
                    $('.overlay').addClass('active');
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
        </script>
        <style>
            #owl-demo .item {
                margin: 3px;
            }
            
            #owl-demo .item img {
                display: block;
                width: 100%;
                height: auto;
            }
        </style>

        <script>
            $(document).ready(function() {
                var owl = $('.owl-carousel');
                owl.owlCarousel({
                    margin: 10,
                    nav: true,
                    loop: true,
                    responsive: {
                        0: {
                            items: 1
                        },
                        600: {
                            items: 2
                        },
                        1000: {
                            items: 3
                        }
                    }
                })
            })
        </script>

</body>
</html>
