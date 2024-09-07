<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C-Reservas.aspx.cs" Inherits="C_Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body bgcolor ="#0C356A">
    <form id="form1" runat="server">
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderColor="#FFFF66" CausesValidation="False" Font-Bold="True" Font-Names="Microsoft JhengHei" Font-Size="14pt" ForeColor="#0066FF" Height="35px" PostBackUrl="~/Empleados.aspx" Text="&lt;==" Width="67px" />
            </p>
        <div class="auto-style1">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#FFF0CE" Text="CONSULTA RESERVA" CssClass="auto-style2"></asp:Label>
        </div>
        <p>
            <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" ForeColor="#00CC00"></asp:Label>
        </p>
        <asp:GridView ID="grdReservas" runat="server" BackColor="#FFC436" BorderColor="#FFF0CE" Font-Names="Microsoft Sans Serif" Font-Size="12pt" ForeColor="#0174BE" Width="1184px" PageSize="50">
        </asp:GridView>
    </form>
</body>
</html>
