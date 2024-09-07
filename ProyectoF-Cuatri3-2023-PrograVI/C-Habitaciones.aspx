<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C-Habitaciones.aspx.cs" Inherits="C_Habitaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            margin-left: 205px;
        }
    </style>
</head>
<body bgcolor ="#BCA37F">
    <form id="form1" runat="server">
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderColor="#FFFF66" CausesValidation="False" Font-Bold="True" Font-Names="Microsoft JhengHei" Font-Size="14pt" ForeColor="#0066FF" Height="35px" PostBackUrl="~/Empleados.aspx" Text="&lt;==" Width="67px" />
            </p>
        <div class="auto-style2">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#FFF2D8" Text="CONSULTA HABITACIONES" CssClass="auto-style1"></asp:Label>
        </div>
        <p>
            <asp:GridView ID="grdMensajes" runat="server" BackColor="#EAD7BB" CssClass="auto-style4" Font-Names="Microsoft Sans Serif" Font-Size="15pt" ForeColor="#113946" Width="802px" OnSelectedIndexChanged="grdMensajes_SelectedIndexChanged">
            </asp:GridView>
        </p>
    </form>
</body>
</html>
