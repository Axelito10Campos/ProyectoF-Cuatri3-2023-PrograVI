<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Habitaciones.aspx.cs" Inherits="Habitaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #0066FF;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 515px;
            margin-left: 360px;
            height: 134px;
            margin-top: 0px;
        }
        .auto-style12 {
            width: 363px;
            margin-left: 80px;
            height: 37px;
        }
        .auto-style29 {
            margin-left: 200px;
        }
        .auto-style6 {
            width: 890px;
            margin-left: 160px;
            text-align: center;
        }
        .auto-style35 {
            width: 142px;
            color: #003366;
            font-size: large;
            height: 37px;
        }
        .auto-style36 {
            width: 363px;
            height: 37px;
        }
        .auto-style37 {
            text-align: center;
        }
        .auto-style38 {
            height: 37px;
        }
        </style>
</head>
<body bgcolor ="#83A2FF">
    <form id="form2" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#FFD28F" Text="HABITACIONES"></asp:Label>
            <hr />
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderColor="#FFFF66" CausesValidation="False" Font-Bold="True" Font-Names="Microsoft JhengHei" Font-Size="14pt" ForeColor="#0066FF" Height="35px" PostBackUrl="~/Empleados.aspx" Text="&lt;==" Width="67px" />
            <br />
            <table align="center">
                <tr>
                    <td class="auto-style38"><asp:Label ID="labelMensajes" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="White" Font-Size="15pt">Mensajes:</asp:Label>
                    </td>
                    <td class="auto-style38"><asp:Label ID="lblMensaje" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="White" Font-Italic="True" Font-Size="15pt" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table align="center" class="auto-style4">
                <tr>
                    <td class="auto-style35">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#3D5656" Text="Habitacion:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtHabitacion" runat="server" BackColor="Transparent" BorderColor="#B4BDFF" BorderStyle="Solid" CssClass="auto-style8" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFE3BB" Width="243px" ReadOnly="True"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#3D5656" Text="Descripcion:"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:TextBox ID="txtDescripcion" runat="server" BackColor="Transparent" BorderColor="#B4BDFF" BorderStyle="Solid" CssClass="auto-style8" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFE3BB" Width="323px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescripcion" CssClass="auto-style11" ErrorMessage="Favor debe digitar la descripcion" ForeColor="#F4160B">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#3D5656" Text="Precio:"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:TextBox ID="txtPrecio" runat="server" BackColor="Transparent" BorderColor="#B4BDFF" BorderStyle="Solid" CssClass="auto-style8" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFE3BB" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPrecio" CssClass="auto-style11" ErrorMessage="Favor debe digitar el *Precio* completo" ForeColor="#F4160B">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
        </p>
        <div class="auto-style37">
            <asp:Button ID="btnMostrarInfo" runat="server" BackColor="#003366" BorderColor="#669999" BorderStyle="Solid" CausesValidation="False" Font-Names="Agency FB" Font-Size="15pt" ForeColor="#B4BDFF" OnClick="btnMostrarInfo_Click" Text="Mostrar Info" />
&nbsp;
            <asp:Button ID="btnQuitarInfo" runat="server" BackColor="#003366" BorderColor="#669999" BorderStyle="Solid" CausesValidation="False" Font-Names="Agency FB" Font-Size="15pt" ForeColor="#B4BDFF" OnClick="btnQuitarInfo_Click" Text="Quitar Info" />
        </div>
        &nbsp;&nbsp;&nbsp;<div class="auto-style29">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="White" BorderStyle="Dashed" ForeColor="#F4160B" Width="299pt" />
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </div>
        &nbsp;<hr />
        <br />
        <div class="auto-style6">
            &nbsp;&nbsp;
            &nbsp;
            <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" BackColor="#FF5050" BorderColor="#FFE3BB" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#FFE3BB" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnProcesar" runat="server" BackColor="#00CC99" BorderColor="#FFE3BB" CssClass="auto-style9" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#FFE3BB" OnClick="btnProcesar_Click" Text="Insertar" Width="137px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificar" runat="server" BackColor="#FFFF66" BorderColor="#FFE3BB" CausesValidation="False" CssClass="auto-style9" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#B4BDFF" Text="Modificar" Width="139px" OnClick="btnModificar_Click" />
            <br />
            <br />
            <asp:Button ID="btnAtras" runat="server" BackColor="#B4BDFF" BorderColor="#FFE3BB" CausesValidation="False" CssClass="auto-style9" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#FFE3BB" Text="Atras" Width="139px" OnClick="btnAtras_Click" />
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdelante" runat="server" BackColor="#B4BDFF" BorderColor="#FFE3BB" CausesValidation="False" CssClass="auto-style9" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#FFE3BB" Text="Adelante" Width="139px" OnClick="btnAdelante_Click" />
        </div>
    </form>
</body>
</html>
