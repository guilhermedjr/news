using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;

namespace AJAXFinal
{
    public partial class novaNoticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submiter_Click(object sender, EventArgs e)
        {
            DataBase Classe = new DataBase();
            Classe.openBar("localhost", "root", "root", "prjNoticias");
            string Title = Titulo.Text;
            string AlFine = LinhaFina.Text;
            string Notice = Noticia.Text;
            string Valor = (Categoria.SelectedIndex + 1).ToString();
            string Logni = "renee_pereira@etecaf.com.br";
            Classe.getCommand("SELECT * FROM noticia");
            int Counter = 1;
            while (Classe.Selected.Read())
            {
                Counter++;
                
            }
            Classe.Refresh();
            Classe.openBar("localhost", "root", "root", "prjNoticias");
            Classe.setCommand("Insert into noticia values (" + Counter + ",CURRENT_DATE(),CURRENT_TIME(),'" + Title + "','" + AlFine + "','" + Notice + "','2020-08-10','14:02:00'," + Valor + ",2,'" + Logni + "');");
            Classe.Refresh();
            if (Imagemzin.HasFile)
            {
                Imagemzin.SaveAs(Server.MapPath("images/noticias//" + Counter + ".jpg"));
                
            }

        }
    }
}