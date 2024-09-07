<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C-Registros.aspx.cs" Inherits="C_Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            margin-left: 205px;
        }
    </style>
</head>
<body bgcolor ="#F1F6F9">
    <form id="form1" runat="server">
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderColor="#FFFF66" CausesValidation="False" Font-Bold="True" Font-Names="Microsoft JhengHei" Font-Size="14pt" ForeColor="#0066FF" Height="35px" PostBackUrl="~/Empleados.aspx" Text="&lt;==" Width="67px" />
            </p>
        <div class="auto-style3">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#212A3E" Text="CONSULTA RESERVA" CssClass="auto-style2"></asp:Label>
        </div>
        <div class="auto-style3">
            <br />
            <asp:GridView ID="grdMensajes" runat="server" BackColor="#9BA4B5" CssClass="auto-style4" Font-Names="Microsoft Sans Serif" Font-Size="15pt" ForeColor="#394867" Width="802px" OnSelectedIndexChanged="grdMensajes_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
