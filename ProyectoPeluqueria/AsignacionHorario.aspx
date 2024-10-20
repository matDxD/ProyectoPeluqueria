<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsignacionHorario.aspx.cs" Inherits="ProyectoPeluqueria.AsignacionHorario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
<body>
    <form id="form1" runat="server">
        <div>
            Disponibilidad<br />
            <asp:TextBox ID="txtDisponibilidad" runat="server"></asp:TextBox>
            <br />
            <br />
            idHorario<br />
            <asp:TextBox ID="txtidHorario" runat="server"></asp:TextBox>
            <br />
            <br />
            HoraInicio<br />
            <asp:TextBox ID="txtHinicio" runat="server"></asp:TextBox>
            <br />
            <br />
            HoraFin<br />
            <asp:TextBox ID="txtHfin" runat="server"></asp:TextBox>
            <br />
            <br />
            CedulaPeluquero<br />
            <asp:TextBox ID="txtCedulaP" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            <br />
            <br />
            <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:GridView ID="Datos" runat="server" AutoGenerateColumns="False" DataKeyNames="IdDisponibilidad" DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="IdDisponibilidad" HeaderText="IdDisponibilidad" ReadOnly="True" SortExpression="IdDisponibilidad" />
                    <asp:BoundField DataField="idHorario" HeaderText="idHorario" SortExpression="idHorario" />
                    <asp:BoundField DataField="HorainicioCorte" HeaderText="HorainicioCorte" SortExpression="HorainicioCorte" />
                    <asp:BoundField DataField="HoraFinCorte" HeaderText="HoraFinCorte" SortExpression="HoraFinCorte" />
                    <asp:BoundField DataField="cedulaP" HeaderText="cedulaP" SortExpression="cedulaP" />
                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ProyectoPeluqueria.ModeloHorarioDataContext" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting" TableName="DisponibilidadH" EnableUpdate="True">
            </asp:LinqDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
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
