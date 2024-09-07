using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for webServiceHotel
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class webServiceHotel : System.Web.Services.WebService
{

    public webServiceHotel()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public double metCalcularHospedaje(double douTarifa,
        int intDias, int intAdultos, int intNiños)
    {
        double douHospedaje;
        double douTaDia  ;
        double douPorcenAdult;
        double douPorcenNiños;
        double douAdult;
        double douNiños;



        //ADULTOS
        douTaDia = intDias * douTarifa * intAdultos;
        douPorcenAdult = (douTaDia * 50) /100;
        douAdult = douTaDia + douPorcenAdult;
        //NIÑOS
        douPorcenNiños = douTarifa * 0.40;
        douNiños = douPorcenNiños * intDias * intNiños;

        douHospedaje = douAdult + douNiños;
        
        return douHospedaje;
    }
    [WebMethod]
    public double metCalcularAlimentacion(double douHospedaje, 
        string strTipoAlimenta)
    {
        double douAlimentacion; 
        douAlimentacion = 0;

        if (strTipoAlimenta == "Tres Tiempos")
            douAlimentacion = douHospedaje * 0.25;
        else if (strTipoAlimenta == "Ejecutiva")
            douAlimentacion = douHospedaje * 0.35;
        else if (strTipoAlimenta == "Todo Incluido")
            douAlimentacion = douHospedaje * 0.50;
        
        return douAlimentacion;
    }
    [WebMethod]
    public double metCalcularImpuestos(double douHospedaje,
        double douAlimentacion)
    {
        double douImpuestos;
        douImpuestos = 0;

        douImpuestos = (douHospedaje + douAlimentacion) * 0.22; 

        return douImpuestos;
    }
    [WebMethod]
    public double metCalcularTotal(double douHospedaje,
        double douAlimentacion, double douImpuestos)
    {
        double douTotal;
        douTotal = douHospedaje + douAlimentacion + douImpuestos;

        return douTotal;
    }


}
