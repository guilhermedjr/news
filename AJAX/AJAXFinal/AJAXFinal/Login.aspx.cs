using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;

namespace AJAXFinal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBase Classe = new DataBase();
            string Log = Request["L"];
            string Pass= Request["P"];
            Classe.openBar("localhost", "root", "root", "prjNoticias");
            Classe.getCommand("SELECT nm_login, nm_senha FROM usuario WHERE nm_login = '" + Log + "' and nm_senha = MD5('" + Pass + "')");
            string Boku = "false";
            while (Classe.Selected.Read())
            {
                if (Classe.Selected["nm_login"].ToString() != null || Classe.Selected["nm_login"].ToString() != "")
                {
                    if (Classe.Selected["nm_senha"].ToString() != null || Classe.Selected["nm_senha"].ToString() != "")
	                {
                        Boku = "true";
		 
	                }

                }

            }

            Response.Write(Boku);

        }
    }
}