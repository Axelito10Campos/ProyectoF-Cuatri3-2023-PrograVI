﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style14 {
            width: 579px;
            text-align: center;
            height: 75px;
        }
        .auto-style15 {
            width: 586px;
            text-align: center;
            height: 75px;
        }
        .auto-style12 {
            height: 31px;
            width: 579px;
            text-align: center;
        }
        .auto-style8 {
            height: 31px;
            width: 586px;
            text-align: center;
        }
        .auto-style11 {
            width: 579px;
        }
        .auto-style7 {
            width: 586px;
        }
        .auto-style13 {
            width: 579px;
            text-align: center;
        }
        .auto-style9 {
            width: 586px;
            text-align: center;
        }
        .auto-style16 {
            width: 20%;
            height: 60px;
        }
        </style>
</head>
<body bgcolor ="#CFFDE1">
    <form id="form2" runat="server">
        <div class="auto-style1">
        <table class="auto-style16">
    <tr>
        <td class="auto-style13">
            &nbsp;
         <asp:Button ID="btnSalir" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Salir" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#FF5050" PostBackUrl="~/Default.aspx" BorderStyle="Dashed" />
        </td>
    </tr>
    </table>
            <asp:Image ID="Image5" runat="server" Height="155px" ImageUrl="~/Imagenes/Ganzo_Azul-removebg-preview.png" Width="190px" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Ganzo Azul" Font-Names="Jokerman" Font-Size="40pt" ForeColor="#3366CC"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="HOTEL" Font-Names="Harrington" Font-Size="25pt" ForeColor="#0066CC" BorderStyle="None"></asp:Label>
            <br />
            <hr />
        </div>
        <table class="auto-style10">
            <tr>
                <td class="auto-style14">
                    <asp:Image ID="Image3" runat="server" Height="44px" ImageUrl="~/Imagenes/Consult Habitac.png" Width="45px" />
                </td>
                <td class="auto-style15">
                    <asp:Image ID="Image2" runat="server" Height="46px" ImageUrl="~/Imagenes/Consult Reserv.png" Width="47px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="btnContactos" runat="server" Font-Size="17pt" Text="Añadir Habitaciones" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#3D5656" PostBackUrl="~/Habitaciones.aspx" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnImagenes" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Consulta Reservas" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Strikeout="False" Font-Underline="True" ForeColor="#3D5656" PostBackUrl="~/C-Reservas.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Image ID="Image4" runat="server" Height="42px" ImageUrl="~/Imagenes/Habitaciones.png" Width="44px" />
                </td>
                <td class="auto-style9">
                    <asp:Image ID="Image1" runat="server" Height="43px" ImageUrl="~/Imagenes/consultaRegistros.png" Width="44px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnReserva" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Consultas Habitaciones" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#3D5656" PostBackUrl="~/C-Habitaciones.aspx" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnInfo" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Consulta Registros" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#3D5656" PostBackUrl="~/C-Registros.aspx" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
