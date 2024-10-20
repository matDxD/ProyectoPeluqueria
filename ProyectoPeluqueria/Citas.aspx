<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="ProyectoPeluqueria.Citas" %>

<!DOCTYPE html>

    <!-- basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <!-- site metas -->
    <title>Look De Ensueño</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <!-- owl css -->
    <link rel="stylesheet" href="css/owl.carousel.min.css"/>
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css"/>
    <!-- responsive-->


    <title></title>
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
                                        <li class="button_user"> <a class="button" href="home.aspx">Volver</a></li>

                                        <li>
                       
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
</head>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:CheckBoxList ID="ListaCortes" runat="server" Width="104px"  onclick="handleSelection()">
                <asp:ListItem Value="101">Fade</asp:ListItem>
                <asp:ListItem Value="111">Pixie</asp:ListItem>
                <asp:ListItem Value="121">Capas</asp:ListItem>
                <asp:ListItem Value="131">Tijeras</asp:ListItem>
                <asp:ListItem Value="141">Degradados</asp:ListItem>
                <asp:ListItem Value="151">Bob</asp:ListItem>
                <asp:ListItem Value="161">Flequillo</asp:ListItem>
                <asp:ListItem Value="171">Clasico</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="btnSeleccionar" runat="server" Text="Consultar" OnClick="btnSeleccionar_Click" Width="90px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
            <br />
            <br />
            <asp:TextBox ID="txtresultado" runat="server" Height="145px" Width="246px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCedula" runat="server" Text="Ingrese su cedula"></asp:Label>
            <asp:TextBox ID="txtcedula" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCedula" runat="server" OnClick="btnCedula_Click" Text="Buscar" />
            <br />
            <br />
            <asp:Label ID="lblcliente" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblaux" runat="server"></asp:Label>
            <br />
            <asp:CheckBoxList ID="listaPeluquero" runat="server" DataSourceID="LinqDataSource1" DataTextField="nombre" DataValueField="cedulaP">
            </asp:CheckBoxList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ProyectoPeluqueria.ModeloPDataContext" EntityTypeName="" TableName="Peluquero">
            </asp:LinqDataSource>
            <br />
            <asp:Button ID="btnPeluqero" runat="server" OnClick="btnPeluqero_Click" Text="Seleccionar" />
            <br />
            <br />
            <asp:CheckBoxList ID="ListaHorario" runat="server">
            </asp:CheckBoxList>
            <asp:Button ID="btnCancelarH" runat="server" OnClick="btnCancelarH_Click" Text="Cancelar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHorario" runat="server" OnClick="btnHorario_Click" Text="Agendar" />
            <br />
            <br />
        </div>
    </form>
    <script>
    function handleSelection() {
        var checkBoxList = document.getElementById('<%= ListaCortes.ClientID %>');
        var checkBoxes = checkBoxList.getElementsByTagName('input');
        var checkedCount = 0;
        
        for (var i = 0; i < checkBoxes.length; i++) {
            if (checkBoxes[i].checked) {
                checkedCount++;
                if (checkedCount > 1) {
                    checkBoxes[i].checked = false;
                }
            }
        }
    }
    </script>
       <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

        <script src="js/jquery-3.0.0.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#dismiss, .overlay').on('click', function () {
                    $('#sidebar').removeClass('active');
                    $('.overlay').removeClass('active');
                });

                $('#sidebarCollapse').on('click', function () {
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
            $(document).ready(function () {
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
