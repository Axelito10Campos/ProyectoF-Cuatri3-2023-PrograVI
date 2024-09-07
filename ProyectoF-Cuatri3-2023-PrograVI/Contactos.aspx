<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactos.aspx.cs" Inherits="Contactos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/cssContactos.css" rel="stylesheet" />

    <style type="text/css">

        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #0066FF;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 926px;
            margin-left: 141px;
            height: 134px;
            margin-top: 0px;
        }
        .auto-style27 {
            width: 108px;
            color: #003366;
            font-size: large;
            height: 39px;
        }
        .auto-style29 {
            margin-left: 200px;
            text-align: center;
        }
        .auto-style6 {
            width: 1014px;
            margin-left: 160px;
            text-align: center;
        }
        .auto-style30 {
            width: 108px;
            color: #003366;
            font-size: large;
            height: 37px;
        }
        .auto-style36 {
            width: 334px;
            margin-left: 80px;
            height: 37px;
        }
        .auto-style37 {
            width: 334px;
            height: 37px;
        }
        .auto-style38 {
            width: 334px;
            height: 39px;
        }
        .auto-style39 {
            width: 51px;
            color: #003366;
            font-size: large;
            height: 37px;
        }
        .auto-style40 {
            width: 51px;
            color: #003366;
            font-size: large;
            height: 39px;
        }
    </style>
</head>
<body bgcolor="white">
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="auto-style1">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#333333" Text="CONTACTANOS"></asp:Label>
        </div>
        <p>
            <table align="center" class="auto-style4">
                <tr>
                    <td class="auto-style39">
                        <asp:Button ID="btnVolver" runat="server" BackColor="#CC0000" CausesValidation="False" Font-Size="12pt" ForeColor="#FF9966" PostBackUrl="~/Clientes.aspx" Text="Volver Inicio" />
                    </td>
                    <td class="auto-style30">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Text="Mensaje:"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:TextBox ID="txtMensaje" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Solid" CssClass="cajatexto" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Width="243px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMensaje" CssClass="auto-style11" ErrorMessage="Favor debe digitar un *Mensaje* valida" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        <asp:Image ID="Image1" runat="server" Height="343px" ImageUrl="~/Imagenes/PersonContacts.png" Width="285px" />
                    </td>
                    <td class="auto-style30">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Text="Fecha:"></asp:Label>
                    </td>
                    <td class="auto-style37">
                        <asp:Calendar ID="Calendar1" runat="server" BorderColor="#FFC7C7" Font-Names="Microsoft Sans Serif" ForeColor="Gray" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#FFC7C7"></asp:Calendar>
                        <br />
                        <asp:TextBox ID="txtFecha" runat="server" BackColor="#C683D7" BorderColor="White" BorderStyle="Solid" CssClass="cajatexto" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#E0F4FF" Width="247px" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFecha" CssClass="auto-style11" ErrorMessage="Favor debe digitar una Fecha" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style30">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style37">
                        <asp:TextBox ID="txtEmail" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Solid" CssClass="cajatexto" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" CssClass="auto-style11" ErrorMessage="Favor debe digitar el Email completo" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato Incorrecto de Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style40">
                        &nbsp;</td>
                    <td class="auto-style27">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Text="Telefono:"></asp:Label>
                    </td>
                    <td class="auto-style38">
                        <asp:TextBox ID="txtTelefono" runat="server" BackColor="Transparent" BorderColor="#999999" BorderStyle="Solid" CssClass="cajatexto" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#7071E8" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style11" ErrorMessage="Favor debe digitar el Telefono completo" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Formato Incorrecto de Telefono" ForeColor="Red" ValidationExpression="\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style40">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style38">
            <asp:Button ID="btnProcesar" runat="server" BackColor="#7071E8" BorderColor="#7071E8" CssClass="botonProcesa" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#ED9ED6" OnClick="btnProcesar_Click" Text="Procesar" Width="137px" />
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;
        </p>
        &nbsp;&nbsp;&nbsp;<div class="auto-style29">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="White" BorderStyle="Dashed" ForeColor="Red" Width="299pt" />
            <table align="center">
                <tr>
                    <td><asp:Label ID="labelMensajes" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="#6666FF" Font-Size="15pt">Mensajes:</asp:Label>
                    </td>
                    <td><asp:Label ID="lblMensaje" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="#6666FF" Font-Italic="True" Font-Size="15pt" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
