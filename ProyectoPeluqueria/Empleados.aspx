<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="ProyectoPeluqueria.Empleados" %>

<!DOCTYPE html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
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
                                        <li class="button_user"> <a class="button" href="EmpleadosCrud.aspx">CrudEmpleado</a></li>

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
            <!-- our barbers -->
            <!-- section -->
            <section class="resip_section">
                <div class="container">

                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="owl-carousel owl-theme">

                                <div class="item">
                                    <div class="product_blog_img">
                                        <img src="images/1.jpg" alt="#" />
                                    </div>
                                    <div class="product_blog_cont">
                                        <h3>Jhon</h3>
                                        <h4>Peluquero</h4>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product_blog_img">
                                        <img src="images/2.jpg" alt="#" />
                                    </div>
                                    <div class="product_blog_cont">
                                        <h3>Carla</h3>
                                        <h4>Peluquera</h4>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product_blog_img">
                                        <img src="images/3.jpg" alt="#" />
                                    </div>
                                    <div class="product_blog_cont">
                                        <h3>Sandra</h3>
                                        <h4>Peluquero</h4>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product_blog_img">
                                        <img src="images/4.jpg" alt="#" />
                                    </div>
                                    <div class="product_blog_cont">
                                        <h3>Brayan</h3>
                                        <h4>Peluquero</h4>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product_blog_img">
                                        <img src="images/5.jpg" alt="#" />
                                    </div>
                                    <div class="product_blog_cont">
                                        <h3>Julio</h3>
                                        <h4>Peluquero</h4>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product_blog_img">
                                        <img src="images/6.jpg" alt="#" />
                                    </div>
                                    <div class="product_blog_cont">
                                        <h3>Catalina</h3>
                                        <h4>Peluquera</h4>
                                    </div>



                            </div>
                        </div>
                    </div>
                </div>
                        <form runat="server">
                    <br />
            <asp:GridView ID="Datos" runat="server" AutoGenerateColumns="False" DataKeyNames="cedulaP" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="cedulaP" HeaderText="cedulaP" ReadOnly="True" SortExpression="cedulaP" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="Ncortes" HeaderText="Ncortes" SortExpression="Ncortes" />
                </Columns>
            </asp:GridView>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ProyectoPeluqueria.ModeloPDataContext" EntityTypeName="" TableName="Peluquero">
            </asp:LinqDataSource>
            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdDisponibilidad" DataSourceID="LinqDataSource2">
                                <Columns>
                                    <asp:BoundField DataField="IdDisponibilidad" HeaderText="IdDisponibilidad" ReadOnly="True" SortExpression="IdDisponibilidad" />
                                    <asp:BoundField DataField="idHorario" HeaderText="idHorario" SortExpression="idHorario" />
                                    <asp:BoundField DataField="HorainicioCorte" HeaderText="HorainicioCorte" SortExpression="HorainicioCorte" />
                                    <asp:BoundField DataField="HoraFinCorte" HeaderText="HoraFinCorte" SortExpression="HoraFinCorte" />
                                    <asp:BoundField DataField="cedulaP" HeaderText="cedulaP" SortExpression="cedulaP" />
                                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                </Columns>
                            </asp:GridView>
                            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="ProyectoPeluqueria.ModeloHorarioDataContext" EntityTypeName="" TableName="DisponibilidadH">
                            </asp:LinqDataSource>
                            <br />
                                    <li class="button_user"> <a class="button" href="AsignacionHorario.aspx">AsignarHorario</a></li>

                            </form>
            </section>
            <!-- end our barbers -->

            <!-- footer -->
            <fooetr>
                <div class="footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="footer_logo">
                                    <a href="index.html"><img src="images/logo1.png" alt="logo" /></a>
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

