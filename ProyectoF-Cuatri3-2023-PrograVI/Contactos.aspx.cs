using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Contactos : System.Web.UI.Page
{
    SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
    DataSet DataHotel;
    int i;
    DataRow ofila;
    protected void Page_Load(object sender, EventArgs e)
    {
        metConexion();
    }

    protected void btnProcesar_Click(object sender, EventArgs e)
    {
        ofila = DataHotel.Tables["Contactos"].NewRow();
        llenaFila();

        //Agregamos a la fila al dataset
        DataHotel.Tables["Contactos"].Rows.Add(ofila);
        //Actualizamos la tabla SQL
        AdaptadorHotel.Update(DataHotel, "contactos");

        lblMensaje.Text = "Datos Ingresados :)";
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
        AdaptadorHotel = new SqlDataAdapter("select * from Contactos",
            conexion);
        SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHotel);

        //Creamos DataSet
        DataHotel = new DataSet();
        AdaptadorHotel.Fill(DataHotel, "contactos");

        lblMensaje.Text = "Conexion exitosa";

    }
    
    //Metodo para Guardar
    public void llenaFila()
    {
        ofila["Mensaje"] = txtMensaje.Text;
        ofila["Fecha"] = txtFecha.Text;
        ofila["Email"] = txtEmail.Text;
        ofila["Telefono"] = txtTelefono.Text;

        //ofila["Posicion"] = int.Parse(txtPosicion.Text);
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtFecha.Text = Calendar1.SelectedDate.ToShortDateString();


        int intDias;
        TimeSpan x;
        DateTime fechaActual, fechaSeleccionada;


        fechaSeleccionada = Calendar1.SelectedDate;
        fechaActual = DateTime.Now;

        //PARA SABER CUANTOS DIAS
        //x = fechaActual - fechaSeleccionada;
        //intDias = x.Days;
        //Calendar1.Visible = false;

        //txtFecha2.Text = intDias.ToString();
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtEmail.Text = "";
        txtFecha.Text = "";
        txtMensaje.Text = "";
        txtTelefono.Text = "";
        lblMensaje.Text = "Datos limpiados";
    }
}