using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_Habitaciones : System.Web.UI.Page
{
    SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
    DataSet DataHotel;
    int i;
    DataRow ofila;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        metConexion();
        grdMensajes.DataSource = DataHotel.Tables["Habitaciones"];
        grdMensajes.DataBind();

    }

    protected void grdMensajes_SelectedIndexChanged(object sender, EventArgs e)
    {

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


    }
}