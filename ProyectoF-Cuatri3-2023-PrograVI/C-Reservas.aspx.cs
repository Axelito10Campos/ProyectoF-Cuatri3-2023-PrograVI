using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class C_Reservas : System.Web.UI.Page
{
    SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
    DataSet DataHotel;
    protected void Page_Load(object sender, EventArgs e)
    {
        metConexion();
        grdReservas.DataSource = DataHotel.Tables["Reservas"];
        grdReservas.DataBind();
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

        lblMensaje.Text = "Conexion Exitosa";
    }

    }