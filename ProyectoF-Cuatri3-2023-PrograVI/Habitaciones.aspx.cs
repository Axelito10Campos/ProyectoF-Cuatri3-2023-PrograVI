using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Habitaciones : System.Web.UI.Page
{
    SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
    DataSet DataHotel;
    int i ;
    DataRow ofila;
    protected void Page_Load(object sender, EventArgs e)
    {
        metConexion();
        
    }
    void metConexion()
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
    //Metodo para Guardar
    public void llenaFila()
    {
        ofila["Descripcion"] = txtDescripcion.Text;
        ofila["Precio"] = txtPrecio.Text;
        

        //ofila["Posicion"] = int.Parse(txtPosicion.Text);
    }
    //Metodo para Mostrar
    public void cargaFila()
    {
        ofila = DataHotel.Tables["Habitaciones"].Rows[i];

        txtHabitacion.Text = ofila["Habitacion"].ToString().Trim();
        txtDescripcion.Text = ofila["Descripcion"].ToString().Trim();
        txtPrecio.Text = ofila["Precio"].ToString().Trim();

        txtHabitacion.Visible = true;
    }
    protected void btnProcesar_Click(object sender, EventArgs e)
    {
        ofila = DataHotel.Tables["Habitaciones"].NewRow();
        llenaFila();

        //Agregamos a la fila al dataset
        DataHotel.Tables["Habitaciones"].Rows.Add(ofila);
        //Actualizamos la tabla SQL
        AdaptadorHotel.Update(DataHotel, "habitaciones");

        txtHabitacion.Text = "";
        txtDescripcion.Text = "";
        txtPrecio.Text = "";
        lblMensaje.Text = "Datos Ingresados";

    }

    protected void btnAtras_Click(object sender, EventArgs e)
    {
        i = int.Parse(Session["i"].ToString());
        i--;
        Session["i"] = i;
        lblMensaje.Text = "Atras";

        try
        {
            cargaFila();

        }
        catch (System.IndexOutOfRangeException ex)
        {
            lblMensaje.Text = " Fin de inicio Archivo!!";
            i--;
            Session["i"] = i;
        }

    }

    protected void btnAdelante_Click(object sender, EventArgs e)
    {
        i = int.Parse(Session["i"].ToString());
        i++;
        Session["i"] = i;
        lblMensaje.Text = "Adelante";


        try
        {
            cargaFila();
        }
        catch (System.IndexOutOfRangeException ex)
        {
            lblMensaje.Text = " Fin de final Archivo!!";
            i--;
            Session["i"] = i;
        }
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        i = int.Parse(Session["i"].ToString());
        ofila = DataHotel.Tables["Habitaciones"].Rows[i];
      
        llenaFila();


        //Actualizamos la tabla SQL
        AdaptadorHotel.Update(DataHotel, "habitaciones");

        txtHabitacion.Text = "";
        txtDescripcion.Text = "";
        txtPrecio.Text = "";
        lblMensaje.Text = "Datos Modificados";
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        i = int.Parse(Session["i"].ToString());
        ofila = DataHotel.Tables["Habitaciones"].Rows[i];
        ofila.Delete();

        //Actualizamos la tabla SQL
        AdaptadorHotel.Update(DataHotel, "habitaciones");

        txtHabitacion.Text = "";
        txtDescripcion.Text = "";
        txtPrecio.Text = "";
        lblMensaje.Text = "Datos eliminados";
    }

    protected void btnMostrarInfo_Click(object sender, EventArgs e)
    {
        metConexion();

        try
        {
            Session["i"] = 0;
            ofila = DataHotel.Tables["Habitaciones"].Rows[i];

            txtHabitacion.Text = ofila["Habitacion"].ToString().Trim();
            txtDescripcion.Text = ofila["Descripcion"].ToString().Trim();
            txtPrecio.Text = ofila["Precio"].ToString().Trim();

            txtHabitacion.Visible = true;
            lblMensaje.Text = "Se muestra la Informacion";
        }catch (System.IndexOutOfRangeException ex) { lblMensaje.Text = "No hay ningun reistro"; }

    }

    protected void btnQuitarInfo_Click(object sender, EventArgs e)
    {
        txtHabitacion.Text = "";
        txtDescripcion.Text = "";
        txtPrecio.Text = "";
        lblMensaje.Text = "Se quito la Informacion";
    }
}