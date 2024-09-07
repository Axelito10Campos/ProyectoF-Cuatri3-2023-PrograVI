using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class SumarioReserva : System.Web.UI.Page
{
    HttpCookie cookieHotel;
    wsHotel.webServiceHotel obHotel = new wsHotel.webServiceHotel();

    SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
    DataSet DataHotel;
    int i;
    DataRow ofila;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strCedula, strCorreo, strTelefono, dateFechaI, dateFechaF;
        cookieHotel = Request.Cookies["cookieHoteL"];

        if (cookieHotel == null)
            lblMensajes.Text = "NO existe datos!!!";
        else
        {
            txtHabitacion.Text = cookieHotel["Habitacion"];
            txtTarifa.Text = cookieHotel["Precio"];
            txtNombre.Text = cookieHotel["Nombre"];
            txtAdultos.Text = cookieHotel["Adultos"];
            txtDias.Text = cookieHotel["DIAS"];
            txtNinos.Text = cookieHotel["Ninos"];
            txtTAlimenta.Text = cookieHotel["Tipo"];
        }
        int intHabitacion, intAdultos, intNiños, intDias;
        string strTipoAlimenta;
        double douTarifa, douHospedaje, douAlimentacion, douImpuestos, douTotal;

        //strTipoAlimenta = cookieHotel["Tipo"];
        strTipoAlimenta = txtTAlimenta.Text;
        intHabitacion = int.Parse(txtHabitacion.Text);
        intAdultos = int.Parse(txtAdultos.Text);
        intNiños = int.Parse(txtNinos.Text);
        intDias = int.Parse(txtDias.Text);
        douTarifa = double.Parse(txtTarifa.Text);

        //Calcular Hospedaje
        douHospedaje = obHotel.metCalcularHospedaje(douTarifa, intDias, intAdultos, intNiños);
        txtHospedaje.Text = douHospedaje.ToString();
        //Calcular Alimenta
        douAlimentacion = obHotel.metCalcularAlimentacion(douHospedaje, strTipoAlimenta);
        txtAlimentacion.Text = douAlimentacion.ToString();
        //Calcular Impuestos
        douImpuestos = obHotel.metCalcularImpuestos(douHospedaje, douAlimentacion);
        txtImpuestos.Text = douImpuestos.ToString();
        //Calcular Total
        douTotal = obHotel.metCalcularTotal(douHospedaje, douAlimentacion, douImpuestos);
        txtTotal.Text = douTotal.ToString();

        //Abrimos la Conexion
        metConexion();
        //Insertar datos a Tabla
        ofila = DataHotel.Tables["Reservas"].NewRow();
        strCedula = cookieHotel["Cedula"].ToString();
        strCorreo = cookieHotel["Correo"].ToString();
        strTelefono = cookieHotel["Telefono"].ToString();
        dateFechaI = cookieHotel["FechaI"].ToString();
        dateFechaF = cookieHotel["FechaF"].ToString();

        llenaFila(strCedula,strCorreo, strTelefono,dateFechaI,dateFechaF);

        //Agregamos a la fila al dataset
        DataHotel.Tables["Reservas"].Rows.Add(ofila);
        //Actualizamos la tabla SQL
        AdaptadorHotel.Update(DataHotel, "reservas");

        //lblMensajes.Text = "Datos Ingresados :)";
    }
    //Metodo para Guardar
    public void llenaFila(string strCedula, string strCorreo, string strTelefono, string fechaI, string fechaF)
    {
        ofila["Habitacion"] = txtHabitacion.Text;
        ofila["Nombre"] = txtNombre.Text; 
        ofila["Adultos"] = txtAdultos.Text;
        ofila["Ninos"] = txtNinos.Text;
        ofila["TipoAlimenta"] = txtTAlimenta.Text;
        //if (txtTAlimenta.Text == "Ejecutivo")
        //    ofila["Alimentacion"] ;
        //else if (txtTAlimenta.Text == "Tres Tiempos")
        //    ofila["Alimentacion"] = 1;
        //else if (txtTAlimenta.Text == "Todo Incluido")
        //    ofila["Alimentacion"] = 2;
        ofila["Dias"] = txtDias.Text;
        ofila["Hospedaje"] = txtHospedaje.Text;
        ofila["Alimentacion"] = txtAlimentacion.Text;
        ofila["Impuestos"] = txtImpuestos.Text;
        ofila["Total"] = txtTotal.Text;
        ofila["Cedula"] = strCedula;
        ofila["Correo"] = strCorreo;
        ofila["Telefono"] = strTelefono;
        ofila["FechaI"] = fechaI;
        ofila["FechaF"] = fechaF;



        //ofila["Posicion"] = int.Parse(txtPosicion.Text);
    }
    void metConexion()
    {
        //Creamos objeto de conexion
        SqlConnection conexion = new SqlConnection();
        //Cargamos el string de conexion
        string strconexion = ConfigurationManager.
            ConnectionStrings["Nomina"].ConnectionString;
        conexion.ConnectionString = strconexion;
        conexion.Open();


        //Configurar Adaptador de Datos
        AdaptadorHotel = new SqlDataAdapter("select * from Reservas",
            conexion);
        SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHotel);

        //Creamos DataSet
        DataHotel = new DataSet();
        AdaptadorHotel.Fill(DataHotel, "reservas");

        lblMensajes.Text = "Conexion exitosa";

    }
}