<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Galeria.aspx.cs" Inherits="Galeria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/modernizr-2.0.6.min.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="js/jquery.rondell.min.js"></script>

    <link href="css/jquery.rondell.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
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
<body style="background:linear-gradient(90deg, hsla(39, 100%, 71%, 1) 0%, hsla(216, 100%, 62%, 1) 100%);">
    <form id="form1" runat="server">
        <table class="auto-style16">
    <tr>
        <td class="auto-style13">
            &nbsp;
         <asp:Button ID="btnVolver" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Volver" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#FF6666" PostBackUrl="~/Clientes.aspx" BorderStyle="Dashed" />
        </td>
    </tr>
    </table>
    <div class="auto-style1">  
    <asp:Label ID="Label1" runat="server" Text="Galeria" Font-Names="Cooper Black" Font-Size="35pt" ForeColor="#FFD95A"></asp:Label>
     </div>
<div id="rondellCarousel" class="auto-style1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <a href="<%# Container.DataItem %>">
                <img src="<%# Container.DataItem %>" />
            </a>
        </ItemTemplate>
    </asp:Repeater>
</div>
<script type="text/javascript">
    $(function () {
        $("#rondellCarousel").rondell({
            preset: "carousel",
        });
    });
</script>
</form>
</body>
</html>
