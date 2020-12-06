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
            string AlFino = LinhaFina.Text;
            string Notice = Noticia.Text;
            string Valor = (Categoria.SelectedIndex + 1).ToString();
           // string Mail = Submiter.ID;

        }
    }
}