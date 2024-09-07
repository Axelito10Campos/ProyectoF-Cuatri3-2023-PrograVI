<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Informacion.aspx.cs" Inherits="Informacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Informacion Hotel</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style8 {
            width: 95%;
        }
        .auto-style10 {
            width: 968px;
        }
        .auto-style11 {
            width: 802px;
        }
        .auto-style15 {
            width: 1177px;
            text-align: center;
        }
        .auto-style20 {
            width: 1132px;
            text-align: center;
        }
        .auto-style21 {
            width: 1219px;
            text-align: center;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style30 {
            text-align: justify;
            width: 668px;
        }
        .auto-style32 {
            width: 67%;
        }
        .auto-style33 {
            width: 326px;
        }
        .auto-style35 {
            width: 268px;
        }
        .auto-style36 {
            text-align: left;
            width: 268px;
        }
        .auto-style38 {
            width: 759px;
            margin-left: 381px;
        }
        .auto-style47 {
            width: 365px;
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
<body style="background: radial-gradient(circle, rgba(234,192,92,1) 8%, rgba(70,153,252,1) 100%);">
    <form id="form1" runat="server">
        <table class="auto-style16">
    <tr>
        <td class="auto-style13">
            &nbsp;
         <asp:Button ID="btnVolver" runat="server" Font-Names="Microsoft YaHei UI" Font-Size="17pt" Text="Volver" BackColor="Transparent" BorderColor="Transparent" Font-Bold="True" Font-Underline="True" ForeColor="#FF6666" PostBackUrl="~/Clientes.aspx" BorderStyle="Dashed" />
        </td>
    </tr>
    </table>
        <div class="auto-style2">
            <asp:Label ID="Label9" runat="server" Font-Names="Cooper Black" ForeColor="#FFCD4B" Text="INFORMACION" CssClass="auto-style1"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <table align="center" class="auto-style8">
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Mision" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="20pt" Text="Mision" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style21">
                        <asp:Label ID="Mision0" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="20pt" Text="Objetivo" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Label ID="Mision1" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="20pt" Text="Vision" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr >
                    <td class="auto-style15" >
                        <asp:Label ID="Mision3"  runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="16pt" Text="En Hotel Ganzo Azul nos dedicamos a ofrecer experiencias excepcionales a nuestros huéspedes, brindando un refugio de lujo y comodidad donde la elegancia se fusiona con la calidez. Nuestra misión es ser el destino preferido para aquellos que buscan escapar de la rutina, proporcionando un servicio impecable y creando recuerdos inolvidables." ForeColor="#45474B"></asp:Label>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style21">
                        <asp:Label ID="Label10" runat="server" Font-Names="Poor Richard" Font-Size="16pt" Text="Nuestro objetivo en Hotel Ganzo Azul es superar constantemente las expectativas de nuestros huéspedes, ofreciendo un ambiente único que refleje nuestra dedicación a la calidad y la atención al detalle. Buscamos ser líderes en la industria hotelera, tanto en términos de servicio como de innovación, manteniendo un equilibrio armonioso entre la tradición y la modernidad." ForeColor="#45474B"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Label ID="Mision2" runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="16pt" Text="Ser reconocidos como el referente de hospitalidad de primera clase, destacando por nuestra atención personalizada, instalaciones de vanguardia y compromiso con la excelencia. Buscamos convertirnos en un oasis de serenidad y sofisticación, donde cada detalle se cuida para asegurar la plena satisfacción de nuestros huéspedes." ForeColor="#45474B"></asp:Label>
                    </td>
                </tr>
                </table>
        </p>
        <p class="auto-style2">
&nbsp;
        </p>
        <p class="auto-style2">
            <table align="center" class="auto-style32">
                <tr>
                    <td class="auto-style33">
                    <asp:Image ID="Image4" runat="server" Height="265px" ImageUrl="~/Imagenes/direccion.png" Width="326px" />
                    </td>
                    <td class="auto-style30">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="18pt" ForeColor="White" Text="U B I C A C I O N"></asp:Label>
                        <br />
                        <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="16pt" ForeColor="#45474B" Text="Situado en la pintoresca bahía de Junquillal , en la costa sur de playa blanca. El Hotel Ganzo Azul emerge como un refugio paradisíaco. Con vistas panorámicas al mar turquesa y rodeado por exuberantes jardines tropicales.    (Cómo llegar: Sigue la pintoresca carretera costera entre palmeras y acantilados)"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="18pt" ForeColor="White" Text="C O N T A C T A N O S"></asp:Label>
        </p>
        <p class="auto-style2">
            <table align="center" class="auto-style38">
                <tr>
                    <td class="auto-style36">
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="17pt" ForeColor="#45474B" Text="Telefono:"></asp:Label>
&nbsp; </td>
                    <td class="auto-style47">
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="17pt" ForeColor="#45474B" Text="Horario de Atencion:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">
                        <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="12pt" ForeColor="#45474B" Text="2245-6780"></asp:Label>
                    </td>
                    <td class="auto-style47">
                        <asp:Label ID="Label21" runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="12pt" ForeColor="#45474B" Text="Lunes a Viernes : 9:00 AM - 6:00 PM"></asp:Label>
                        <br />
                        <asp:Label ID="Label22" runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="12pt" ForeColor="#45474B" Text="Sábado y Domingo : 10:00 AM - 4:00 PM"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="17pt" ForeColor="#45474B" Text="Correo Electronico:"></asp:Label>
                    </td>
                    <td class="auto-style47">
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Poor Richard" Font-Size="17pt" ForeColor="#45474B" Text="Redes Sociales:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Poor Richard" Font-Size="12pt" ForeColor="#45474B" Text="infoContac@ganzoazul.com"></asp:Label>
                    </td>
                    <td class="auto-style47">&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" CssClass="facebook" runat="server" ImageUrl="~/Imagenes/facebook.png" NavigateUrl="https://www.facebook.com/">@HotelGanzoAzul</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Imagenes/tik-tok.png" NavigateUrl="https://www.tiktok.com/">@HotelGanzoAzul</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Imagenes/instagram.png" NavigateUrl="https://www.instagram.com/">@HotelGanzoAzul</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </p>
        <p class="auto-style22">
            &nbsp;</p>
    </form>
</body>
</html>
