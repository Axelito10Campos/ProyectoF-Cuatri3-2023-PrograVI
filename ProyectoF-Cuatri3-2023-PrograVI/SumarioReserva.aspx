<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SumarioReserva.aspx.cs" Inherits="SumarioReserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            width: 191px;
        }
        .auto-style5 {
            width: 195px;
        }
        .auto-style6 {
            width: 71px;
        }
        .auto-style7 {
            text-decoration: underline;
        }
        .auto-style8 {
            width: 867px;
        }
        .auto-style9 {
            width: 193px;
        }
        .auto-style16 {
            width: 20%;
            height: 60px;
        }
        .auto-style13 {
            width: 579px;
            text-align: center;
        }
        </style>
</head>
<body style="background-image: radial-gradient( circle 976px at 51.2% 51%, rgba(11,27,103,1) 0%, rgba(16,66,157,1) 0%, rgba(11,27,103,1) 17.3%, rgba(11,27,103,1) 58.8%, rgba(11,27,103,1) 71.4%, rgba(16,66,157,1) 100.2%, rgba(187,187,187,1) 100.2% );">
    <form id="form1" runat="server">
        <table class="auto-style16">
    <tr>
        <td class="auto-style13">
            &nbsp;
         <asp:Button ID="btnSalir" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Salir" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#FF5050" PostBackUrl="~/Default.aspx" BorderStyle="Dashed" />
        </td>
    </tr>
    </table>
        <div class="auto-style1">
            <asp:Label ID="Label9" runat="server" Font-Names="Yu Gothic Medium" ForeColor="#EEEEEE" Text="SUMARIO" Font-Bold="True" Font-Size="30pt"></asp:Label>
        </div>
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl="~/Imagenes/Moneda.png" Width="100px" />
            <br />
            <br />
            <asp:Label ID="lblMensajes" runat="server" Font-Names="Eras Demi ITC" ForeColor="#00CC66" Font-Size="15pt"></asp:Label>
            <br />
        </div>
        <table align="center" class="auto-style8">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Habitacion:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHabitacion" runat="server" BackColor="Transparent" BorderColor="Transparent" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" ReadOnly="True" Width="80px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" Text="Hospedaje:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtHospedaje" runat="server" BackColor="Transparent" BorderColor="#393E46" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" ReadOnly="True" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Nombre:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNombre" runat="server" BackColor="Transparent" BorderColor="Transparent" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" ReadOnly="True" Width="187px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" Text="Alimentacion:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtAlimentacion" runat="server" BackColor="Transparent" BorderColor="#393E46" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" ReadOnly="True" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Adultos:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAdultos" runat="server" BackColor="Transparent" BorderColor="Transparent" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" ReadOnly="True" Width="80px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" Text="Impuestos:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtImpuestos" runat="server" BackColor="Transparent" BorderColor="#393E46" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" ReadOnly="True" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label14" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Niños:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNinos" runat="server" BackColor="Transparent" BorderColor="Transparent" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" Width="64px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" Text="Total:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtTotal" runat="server" BackColor="#FFD369" BorderColor="#FFFF99" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#E55604" ReadOnly="True" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label15" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Tipo Alimentacion:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTAlimenta" runat="server" BackColor="Transparent" BorderColor="Transparent" CssClass="auto-style7" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" ReadOnly="True" Width="187px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label16" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Dias:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDias" runat="server" BackColor="Transparent" BorderColor="Transparent" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" ReadOnly="True" Width="80px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label21" runat="server" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#FFD369" Text="Tarifa:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTarifa" runat="server" BackColor="Transparent" BorderColor="Transparent" Font-Names="Malgun Gothic" Font-Size="15pt" ForeColor="#EEEEEE" ReadOnly="True" Width="147px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
