<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SCRUM.aspx.cs" Inherits="_270423CRUD.SCRUM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nit<asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
            <br />
            <br />
            Empresa
            <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
            <br />
            <br />
            Direccion
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefono
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <br />
            <br />
            Ciudad
            <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="botonGuardar" runat="server" OnClick="botonGuardar_Click" Text="Guardar" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="botonBuscar" runat="server" OnClick="botonBuscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="botonModificar" runat="server" OnClick="botonModificar_Click" Text="Modificar" />
&nbsp;
            <asp:Button ID="BotonEliminar" runat="server" OnClick="BotonEliminar_Click" Text="Eliminar" />
            <br />
            <br />
            <br />
            <asp:GridView ID="Datos" runat="server" AutoGenerateColumns="False" DataKeyNames="nit" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="nit" HeaderText="nit" ReadOnly="True" SortExpression="nit" />
                    <asp:BoundField DataField="empresa" HeaderText="empresa" SortExpression="empresa" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                    <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="_270423CRUD.ModeloDataContext" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting" TableName="Clientes">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
