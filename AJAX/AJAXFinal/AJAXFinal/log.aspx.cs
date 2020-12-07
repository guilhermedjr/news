using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;

namespace AJAXFinal
{
    public partial class log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Boku = "";
            string Code = Request["c"];
            string CodeV = Request["Ve"];
            string CodeG = Request["Co"]; 
            DataBase Classe = new DataBase();
            if (Code == "true")
            {
                Classe.openBar("localhost", "root", "root", "prjNoticias");
                Classe.getCommand("SELECT * FROM noticia WHERE cd_situacao_noticia = 1");
                while (Classe.Selected.Read())
                {
                    Boku += Classe.Selected["cd_noticia"] + "☺" + Classe.Selected["nm_titulo"] + "☺" + Classe.Selected["ds_noticia"] + "☺" + Classe.Selected["cd_categoria"] + "☻";

                }

                Classe.Refresh();
                Response.Write(Boku);

            }
            else
            {
                if (CodeV == "0")
                {
                    Classe.openBar("localhost", "root", "root", "prjNoticias");
                    Classe.setCommand("UPDATE noticia SET cd_situacao_noticia = 3 WHERE cd_noticia = " + CodeG);
                    Classe.Refresh();

                }
                else
                {
                    Classe.openBar("localhost", "root", "root", "prjNoticias");
                    Classe.setCommand("UPDATE noticia SET cd_situacao_noticia = 1 WHERE cd_noticia = " + CodeG);
                    Classe.setCommand("UPDATE noticia SET dt_publicacao = CURRENT_DATE() WHERE cd_noticia = " + CodeG);
                    Classe.setCommand("UPDATE noticia SET hr_publicacao = CURRENT_TIME() WHERE cd_noticia = " + CodeG);
                    Classe.Refresh();

                }


            }


        }
    }
}