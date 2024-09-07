using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Globalization;
using System.Drawing;

public partial class Reservacion : System.Web.UI.Page
{
    SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
    DataSet DataHotel;
    int i;
    DataRow ofila;

    void metConexionHabitacion()
    {
        //Creamos objeto de conexion
        SqlConnection conexion = new SqlConnection();
        //Cargamos el string de conexion
        string strconexion = ConfigurationManager.ConnectionStrings
            ["Nomina"].ConnectionString;
        conexion.ConnectionString = strconexion;
        conexion.Open();


        //Configurar Adaptador de Datos
        AdaptadorHotel = new SqlDataAdapter("select * from Habitaciones",
            conexion);
        SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHotel);

        //Creamos DataSet
        DataHotel = new DataSet();
        AdaptadorHotel.Fill(DataHotel, "habitaciones");

        lblMensaje.Text = "Conexion exitosa";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //metConexionHabitacion();

            //// Asigna la fuente de datos al DropDownList
            //ddlHabitacion.DataSource = DataHotel.Tables["Habitaciones"];

            //// Asigna los campos de texto y valor a mostrar en el DropDownList
            //ddlHabitacion.DataTextField = "Habitacion";
            //ddlHabitacion.DataValueField = "Habitacion";

            //// Asigna el campo de valor (Tarifa) al TextBox txtTarifa
            //txtTarifa.Text = DataHotel.Tables["Habitaciones"].Rows[0]["Precio"].ToString();

            //// Realiza el enlace de datos
            //ddlHabitacion.DataBind();

            //// Asigna el valor seleccionado del DropDownList a txtHabitacion
            //txtHabitacion.Text = ddlHabitacion.SelectedValue;

            metConexionHabitacion();

            // Asigna la fuente de datos al DropDownList
            ddlHabitacion.DataSource = DataHotel.Tables["Habitaciones"];

            // Asigna los campos de texto y valor a mostrar en el DropDownList
            ddlHabitacion.DataTextField = "Habitacion";
            ddlHabitacion.DataValueField = "Precio"; // Cambiado a "Precio"

            // Realiza el enlace de datos
            ddlHabitacion.DataBind();

            // Asigna el valor seleccionado del DropDownList a txtHabitacion
            txtTarifa.Text = ddlHabitacion.SelectedValue;
            // Asigna el campo de valor (Tarifa) al TextBox txtTarifa
            txtHabitacion.Text = ddlHabitacion.SelectedItem.Text;

        }
    }
    protected void ddlHabitacion_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Actualiza el valor del TextBox txtTarifa con el precio seleccionado
        txtHabitacion.Text = ddlHabitacion.SelectedItem.Text;
        // Asigna el valor seleccionado del DropDownList a txtHabitacion
        txtTarifa.Text = ddlHabitacion.SelectedValue;
    }

    protected void btnHabitacion_Click(object sender, EventArgs e)
    {
        
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtFechaI.Text = Calendar1.SelectedDate.ToShortDateString();


        int intDias;
        TimeSpan x;
        DateTime fechaActual, fechaSeleccionada;


        fechaSeleccionada = Calendar1.SelectedDate;
        fechaActual = DateTime.Now;

    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtFechaF.Text = Calendar2.SelectedDate.ToShortDateString();


        int intDias;
        TimeSpan x;
        DateTime fechaActual, fechaSeleccionada;


        fechaSeleccionada = Calendar1.SelectedDate;
        fechaActual = DateTime.Now;
    }

    protected void btnCalcularDias_Click(object sender, EventArgs e)
    {
        int intDias;
        TimeSpan x;
        DateTime fechaInicial, fechaFinal;

        if (Calendar1.SelectedDate < Calendar2.SelectedDate)
        {
            fechaInicial = Calendar1.SelectedDate;
            fechaFinal = Calendar2.SelectedDate;

            x = fechaFinal - fechaInicial;
            intDias = x.Days;

            txtDias.Text = intDias.ToString();
            lblMensaje.Text = "Total de dias en el hotel:  " + intDias;
        }
        else
            lblMensaje.Text = "Por favor seleccionar una fecha correcta";  
    }


    protected void btnProcesar_Click(object sender, EventArgs e)
    {

        string strNombre, intHabitacion, intAdultos,
            intNiños, intDias, intTipo, intTarifa, dateTI, dateTF, strCedula, strCorreo, strTelefono;

        strNombre = txtNombre.Text;
        intHabitacion = txtHabitacion.Text;
        intAdultos = txtAdultos.Text;
        intNiños = txtNiños.Text;
        intDias = txtDias.Text;
        intTarifa = txtTarifa.Text;

        intTipo = rdbTTiempos.Text;
        if (rdbTTiempos.Checked)
            intTipo = "Tres Tiempos";
        else if (rdbEjecutiva.Checked)
            intTipo = "Ejecutiva";
        else if (rdbTIncluido.Checked)
            intTipo = "Todo Incluido";
        dateTI = txtFechaI.Text;
        dateTF = txtFechaF.Text;
        strCedula = txtCedula.Text;
        strCorreo= txtEmail.Text;
        strTelefono = txtTelefono.Text;


        //Creacion de cookie
        //1. Creacion
        HttpCookie cookieHotel;
        cookieHotel = new HttpCookie("cookieHoteL");
        //2. Llenar lod datos
        cookieHotel["Ninos"] = intNiños;
        cookieHotel["Nombre"] = strNombre;
        cookieHotel["Habitacion"] = intHabitacion;
        cookieHotel["Precio"] = intTarifa;
        cookieHotel["Adultos"] = intAdultos;
        cookieHotel["DIAS"] = intDias;
        cookieHotel["Tipo"] = intTipo;
        cookieHotel["Cedula"] = strCedula;
        cookieHotel["Correo"] = strCorreo;
        cookieHotel["FechaI"] = dateTI;
        cookieHotel["FechaF"] = dateTF;
        cookieHotel["Telefono"] = strTelefono;




        //2. Las fechas de expiracion
        //cookieHotel.Expires = DateTime.Today.AddDays(10);
        //Escribirla
        Response.Cookies.Add(cookieHotel);
        Response.Redirect("SumarioReserva.aspx");

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtAdultos.Text = "";
        txtCedula.Text = "";
        txtDias.Text = "";
        txtEmail.Text = "";
        txtFechaF.Text = "";
        txtFechaI.Text = "";
        txtHabitacion.Text ="";
        txtNiños.Text = "";
        txtNombre.Text = "";
        txtTarifa.Text = "";
        txtTelefono.Text = "";
        lblMensaje.Text = "Datos Limpiados";
    }
}