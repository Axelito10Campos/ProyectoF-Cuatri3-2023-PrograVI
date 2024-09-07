<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservacion.aspx.cs" Inherits="Reservacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
                    <link href="css/cssReserva.css" rel="stylesheet" />
    <style type="text/css">



        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #0066FF;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 1194px;
            margin-left: 22px;
            height: 134px;
            margin-top: 0px;
        }
        .auto-style29 {
            margin-left: 200px;
        }
        .auto-style43 {
            width: 169px;
            color: #003366;
            font-size: large;
            height: 37px;
        }
        .auto-style45 {
            width: 169px;
            color: #003366;
            font-size: large;
            height: 39px;
        }
        .auto-style46 {
            width: 333px;
            height: 39px;
        }
        .auto-style52 {
            width: 309px;
            margin-left: 80px;
            height: 37px;
        }
        .auto-style53 {
            width: 114px;
            margin-left: 80px;
            height: 37px;
        }
        .auto-style54 {
            width: 360px;
            margin-left: 80px;
            height: 37px;
        }
        .auto-style55 {
            width: 360px;
            height: 37px;
        }
        .auto-style57 {
            width: 360px;
            height: 39px;
        }
        .auto-style58 {
            width: 108px;
            margin-left: 80px;
            height: 37px;
        }
        .auto-style59 {
            width: 108px;
            height: 37px;
        }
        .auto-style60 {
            width: 108px;
            height: 39px;
        }
        .auto-style61 {
            width: 217px;
            color: #003366;
            font-size: large;
            height: 39px;
        }
        .auto-style62 {
            width: 217px;
            height: 37px;
        }
        .auto-style63 {
            width: 333px;
            height: 37px;
        }
        .auto-style64 {
            width: 217px;
            height: 39px;
        }
        .auto-style65 {
            text-align: center;
        }
        .auto-style66 {
            text-align: center;
            width: 260px;
        }
        .auto-style67 {
            width: 260px;
        }
        .auto-style68 {
            margin-left: 224px;
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
<body style ="background: linear-gradient(180deg, rgba(116,148,166,1) 31%, rgba(231,177,77,1) 74%, rgba(244,218,97,1) 100%);">
    <form id="form2" runat="server">
        <table class="auto-style16">
    <tr>
        <td class="auto-style13">
            &nbsp;
         <asp:Button ID="btnVolver" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Volver" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#FF6666" PostBackUrl="~/Clientes.aspx" BorderStyle="Dashed" CausesValidation="False" />
        </td>
    </tr>
    </table>
        <div class="auto-style1">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#454545" Text="RESERVACIONES"></asp:Label>
            <hr />
        </div>
        <p>
            <table align="center" bgcolor ="#FFE5CA">
                <tr>
                    <td class="auto-style65"><asp:Label ID="labelMensajes1" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="#333333" Font-Size="15pt">Fecha Inicio</asp:Label>
                    </td>
                    <td class="auto-style66"><asp:Label ID="labelMensajes0" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="#333333" Font-Size="15pt">Fecha Final</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BorderColor="#F3EEEA" Font-Names="Microsoft Sans Serif" ForeColor="#F3EEEA" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#454545" Font-Size="12pt" Width="303px"></asp:Calendar>
                        </td>
                    <td class="auto-style67">
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="#454545" BorderColor="#F3EEEA" Font-Names="Microsoft Sans Serif" Font-Size="12pt" ForeColor="#F3EEEA" OnSelectionChanged="Calendar2_SelectionChanged" Width="303px"></asp:Calendar>
                    </td>
                </tr>
            </table>
            <br />
            <table align="center" style="width: 433px" color ="">
                <tr>
                    <td class="auto-style53"><asp:Label ID="labelMensajes" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="White" Font-Size="15pt">Mensajes:</asp:Label>
                    </td>
                    <td class="auto-style52"><asp:Label ID="lblMensaje" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" ForeColor="White" Font-Italic="True" Font-Size="15pt" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table align="center" class="auto-style4">
                <tr>
                    <td class="auto-style43">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Habitacion:"></asp:Label>
                    </td>
                    <td class="auto-style54">
                        &nbsp;<asp:DropDownList ID="ddlHabitacion" CssClass="select" runat="server" BackColor="#FFE5CA" Font-Names="Segoe UI Semibold" ForeColor="#454545"  AutoPostBack="True" OnSelectedIndexChanged="ddlHabitacion_SelectedIndexChanged" Width="149px">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtHabitacion" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="65px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHabitacion" CssClass="auto-style11" ErrorMessage="Favor debe digitar un *Mensaje* valida" ForeColor="#454545">*</asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style58">
                        &nbsp;</td>
                    <td class="auto-style61">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="FechaI:"></asp:Label>
                    </td>
                    <td class="auto-style46">
                        <asp:TextBox ID="txtFechaI" runat="server" BackColor="#FFE5CA" BorderColor="#FFE5CA" BorderStyle="None" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaI" CssClass="auto-style11" ErrorMessage="Favor seleccionar una fecha inicial" ForeColor="#454545">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Cedula:"></asp:Label>
                    </td>
                    <td class="auto-style55">
                        <asp:TextBox ID="txtCedula" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCedula" CssClass="auto-style11" ErrorMessage="Favor debe digitar la *Cedula*completo" ForeColor="#454545">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCedula" ErrorMessage="Formato Incorrecto de Cedula" ForeColor="#454545" ValidationExpression="\d{1}-\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style59">
                        &nbsp;</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="FechaF:"></asp:Label>
                    </td>
                    <td class="auto-style63">
                        <asp:TextBox ID="txtFechaF" runat="server" BackColor="#FFE5CA" BorderColor="#FFE5CA" BorderStyle="None" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtFechaF" CssClass="auto-style11" ErrorMessage="Favor seleccionar una fecha final" ForeColor="#454545">*</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">
                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Nombre:"></asp:Label>
                    </td>
                    <td class="auto-style55">
                        <asp:TextBox ID="txtNombre" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtNombre" CssClass="auto-style11" ErrorMessage="Favor debe digitar el *Nombre*" ForeColor="#454545">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style59">
                        &nbsp;</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Dias:"></asp:Label>
                    </td>
                    <td class="auto-style63">
                        <asp:Button ID="btnCalcularDias" runat="server" BackColor="#454545" CausesValidation="False" Font-Names="Microsoft Tai Le" ForeColor="White" OnClick="btnCalcularDias_Click" Text="Calcular Dias" Width="147px" />
&nbsp;
                        <asp:TextBox ID="txtDias" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="61px" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style55">
                        <asp:TextBox ID="txtEmail" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" CssClass="auto-style11" ErrorMessage="Favor debe digitar el Email completo" ForeColor="#454545">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato Incorrecto de Email" ForeColor="#454545" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style59">
                        &nbsp;</td>
                    <td class="auto-style62">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Tipo Alimentacion:"></asp:Label>
                    </td>
                    <td class="auto-style63">
                        <asp:RadioButton ID="rdbTTiempos" runat="server" GroupName="Alimentacion" Text="Tres Tiempos" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" />
                        <br />
                        <asp:RadioButton ID="rdbTIncluido" runat="server" GroupName="Alimentacion" Text="Todo Incluido" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" />
                        <br />
                        <asp:RadioButton ID="rdbEjecutiva" runat="server" GroupName="Alimentacion" Text="Ejecutiva" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Telefono:"></asp:Label>
                    </td>
                    <td class="auto-style57">
                        <asp:TextBox ID="txtTelefono" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style11" ErrorMessage="Favor debe digitar el Telefono completo" ForeColor="#454545">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Formato Incorrecto de telefono" ForeColor="#454545" ValidationExpression="\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style60">
                        &nbsp;</td>
                    <td class="auto-style64">
                        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Tarifa:"></asp:Label>
                    </td>
                    <td class="auto-style46">
                        <asp:TextBox ID="txtTarifa" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="65px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style45">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Adultos:"></asp:Label>
                    </td>
                    <td class="auto-style57">
                        <asp:TextBox ID="txtAdultos" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAdultos" CssClass="auto-style11" ErrorMessage="Favor digitar" ForeColor="#454545">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAdultos" ErrorMessage="Rango permitido de 1 a 6 maximo" MaximumValue="6" MinimumValue="1" ForeColor="#454545">*</asp:RangeValidator>
                    </td>
                    <td class="auto-style60">
                        &nbsp;</td>
                    <td class="auto-style64">
                        &nbsp;</td>
                    <td class="auto-style46">
            <asp:Button ID="btnProcesar" runat="server" BackColor="#009933" BorderColor="#66FF99" CssClass="auto-style9" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#FFF3E2" OnClick="btnProcesar_Click" Text="Procesar" Width="137px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#FFF3E2" Text="Niños:"></asp:Label>
                    </td>
                    <td class="auto-style57">
                        <asp:TextBox ID="txtNiños" runat="server" BackColor="Transparent" BorderColor="#FFE5CA" BorderStyle="Solid" CssClass="txt" Font-Names="Segoe UI" Font-Size="12pt" ForeColor="#454545" Width="247px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNiños" CssClass="auto-style11" ErrorMessage="Favor digitar" ForeColor="#454545">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style60">
                        &nbsp;</td>
                    <td class="auto-style64">
                        &nbsp;</td>
                    <td class="auto-style46">
            <asp:Button ID="btnLimpiar" runat="server" BackColor="#FFFFCC" BorderColor="White" CausesValidation="False" CssClass="auto-style9" Font-Names="Segoe UI Black" Font-Size="13pt" ForeColor="#666666" Text="Limpiar" Width="119px" OnClick="btnLimpiar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">
                        &nbsp;</td>
                    <td class="auto-style57">
                        &nbsp;</td>
                    <td class="auto-style60">
                        &nbsp;</td>
                    <td class="auto-style64">
                        &nbsp;</td>
                    <td class="auto-style46">
                        &nbsp;</td>
                </tr>
                </table>
&nbsp;
        </p>
        &nbsp;<div class="auto-style29">
            <div class="auto-style65">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="White" BorderStyle="Dashed" ForeColor="#454545" Width="319pt" CssClass="auto-style68" />
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
