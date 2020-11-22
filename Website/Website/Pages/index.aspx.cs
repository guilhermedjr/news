using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Website.Classes;

namespace Website.Pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            News news = new News();

            List<News> newsList = news.GetAll();

            if (newsList != null)
            {
                for (int i = 0; i < newsList.Count; i++)
                {
                    noticias.Text += "<div class='col1de1'>";
				    noticias.Text += "<a href='noticia.html' class='linkPadrao'>";
				    noticias.Text += "<img class='imgCol1de1' src='images/noticias/1.jpg'>";
				    noticias.Text += "<h1 class='titulo'>Alunos não poderão usar calça de pijama nem se sentar na cama durante aulas on-line em Springfield, nos EUA</h1>";
				    noticias.Text += "<h2 class='linhaFina'>Autoridades afirmam que estudantes devem se comportar como se estivessem na escola. Medida recebeu críticas de pais dos alunos.</h2>";
				    noticias.Text += "</a></div>";
                }
            }
        }
    }
}