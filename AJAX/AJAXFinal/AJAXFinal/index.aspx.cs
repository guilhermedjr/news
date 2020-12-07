using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;

namespace AJAXFinal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBase Classe = new DataBase();
            Classe.openBar("localhost", "root", "root", "prjNoticias");
            Classe.getCommand("SELECT * FROM noticia WHERE cd_situacao_noticia = 2");
            string Boku = "";
            while (Classe.Selected.Read())
            {
                Boku += Classe.Selected["cd_noticia"] + "☺" + Classe.Selected["nm_titulo"] + "☺" + Classe.Selected["ds_noticia"] + "☺" + Classe.Selected["cd_categoria"] + "☻";

            }

            Classe.Refresh();
            Response.Write(Boku);

        }
    }
}