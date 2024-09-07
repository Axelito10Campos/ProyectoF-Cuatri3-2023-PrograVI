<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</head>
<body style ="background: linear-gradient(90deg, hsla(186, 33%, 94%, 1) 0%, hsla(216, 41%, 79%, 1) 100%);">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="HOTEL" Font-Names="Broadway" Font-Size="40pt" ForeColor="#0A2472"></asp:Label>
       
        <p>
            <asp:Label ID="Label2" runat="server" Text="Ganzo Azul" Font-Names="Jokerman" Font-Size="40pt" ForeColor="#0A2472" BorderStyle="Double"></asp:Label>
            </p>
            <p>
                <asp:Label style="color: #99C24D; "
                    ID="Label3" runat="server" Font-Names="Bahnschrift Light" Font-Size="17pt" ForeColor="#0E6BA8" Text="Ubicados en los rincones de Junquillal, Sta Cruz, Guanacaste"></asp:Label>
            </p>
             <asp:Button ID="btnClientes" runat="server" Text="Clientes" BackColor="#FFEED9" Font-Names="Bahnschrift SemiBold" Font-Size="15pt" ForeColor="#0A2472" BorderColor="#FFF5C2" OnClick="btnClientes_Click" PostBackUrl="~/Clientes.aspx"/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnUserInter" runat="server" Text="Usuarios Internos" BackColor="#C5E898" Font-Names="Bahnschrift SemiBold" Font-Size="15pt" ForeColor="#0A2472" Width="216px" BorderColor="#FFF5C2" PostBackUrl="~/Empleados.aspx" />

            <br />
            <br />
            
             

            <video controls style="width: 750px">
                 <source src="Video/pexels-peggy-anke-5288186 (360p).mp4" type="audio/mp4"/>
            </video controls>

        </div>
    </form>
</body>
</html>
