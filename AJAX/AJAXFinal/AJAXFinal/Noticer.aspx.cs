using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;

namespace AJAXFinal
{
    public partial class Noticer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBase Classe = new DataBase();
            string Code = Request["Ca"];
            string VARE = Request["V"];
            Classe.openBar("localhost", "root", "root", "prjNoticias");
            Classe.getCommand("SELECT * FROM noticia WHERE cd_categoria = " + Code);
            string Boku = "";
            while (Classe.Selected.Read())
            {
                if (Classe.Selected["cd_noticia"].ToString() != VARE)
                {
                    Boku += Classe.Selected["cd_noticia"] + "☺" + Classe.Selected["nm_titulo"] + "☺" + Classe.Selected["nm_linha_fina"] + "☻";

                }

            }

            Response.Write(Boku);

        }
    }
}