using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Website.Classes;

namespace Website.lib
{
    public partial class GetCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Category category = new Category();

            List<Category> categories = category.GetAll();

            string htmlContent = "";

            for (int i = 0; i < categories.Count; i++)
            {
                htmlContent += String.Format(
                    "<a class='mnuLink' href='index.html?c={0}'>{1}</a>", 
                     categories[i].Id, categories[i].Name);
            }

            Response.Write(htmlContent);
        }
    }
}