<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GraficoPeluquero.aspx.cs" Inherits="ProyectoPeluqueria.GraficoPeluquero" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp; Grafico Peluqueros con #Cortes<br />
            <asp:Chart ID="Chart1" runat="server" DataSourceID="LinqDataSource1">
                <series>
                    <asp:Series Name="Series1" XValueMember="nombre" YValueMembers="Ncortes">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ProyectoPeluqueria.ModeloPDataContext" EntityTypeName="" Select="new (nombre, Ncortes)" TableName="Peluquero">
            </asp:LinqDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
