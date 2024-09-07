using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Galeria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList Lista = new ArrayList();
        string[] Archivos = System.IO.Directory.GetFiles(Server.MapPath("~/Imagenes/VisorImagenes"), "*.*");

        foreach (string archivo in Archivos)
        {
            Lista.Add("/Imagenes/VisorImagenes/" + System.IO.Path.GetFileName(archivo));
        }
        Repeater1.DataSource = Lista;
        Repeater1.DataBind();
    }
}