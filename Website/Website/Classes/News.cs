using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace Website.Classes
{
    public class News : clsDatabase
    {
        public int Id { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Headline { get; set; }
        public string ThinLine { get; set; }
        public string Content { get; set; }
        public string PublicationDate { get; set; }
        public string PublicationTime { get; set; }
        public Category NewsCategory { get; set; }
        public int Situation { get; set; }
        public string Login { get; set; }

        private MySqlDataReader Data = null;

        public News() : base() { }

        public News(int id, string date, string time, string headline, string thinline, 
            string content, string publicationDate, string publicationTime, Category newsCategory,
            int situation, string login) : base()
        {
            this.Id = id;
            this.Date = date;
            this.Time = time;
            this.Headline = headline;
            this.ThinLine = thinline;
            this.Content = content;
            this.PublicationDate = publicationDate;
            this.PublicationTime = publicationTime;
            this.NewsCategory = newsCategory;
            this.Situation = situation;
            this.Login = login;
        }

        /// <summary>
        /// Add news constructor
        /// </summary>
        /// <param name="headline"></param>
        /// <param name="thinLine"></param>
        /// <param name="content"></param>]
        /// <param name="NewsCategory"></param>
        public News(string headline, string thinline, string content, Category newsCategory) : base()
        {
            this.Headline = headline;
            this.ThinLine = thinline;
            this.Content = content;
            this.NewsCategory = newsCategory;
        }

        public List<News> GetAll()
        {
            if (base.DQLCommand(Procedure.buscarNoticias, ref this.Data,
                new string[,] {
                    {"pCategoria", Convert.ToString(-1)}
                }))
            {
                if (this.Data.HasRows)
                {
                    List<News> news = new List<News>();

                    while (this.Data.Read())
                    {
                        news.Add(
                            new News(
                                int.Parse(this.Data["cd_noticia"].ToString()),
                                this.Data["dt_noticia"].ToString(),
                                this.Data["hr_noticia"].ToString(),
                                this.Data["nm_titulo"].ToString(),
                                this.Data["nm_linha_fina"].ToString(),
                                this.Data["ds_noticia"].ToString(),
                                this.Data["dt_publicacao"].ToString(),
                                this.Data["hr_publicacao"].ToString(),
                                new Category().Get(
                                        int.Parse(this.Data["cd_categoria"].ToString())
                                        ),
                                int.Parse(this.Data["cd_situacao_noticia"].ToString()),
                                this.Data["nm_login"].ToString()
                            )
                        );
                    }
                    this.Data.Close();
                    base.Disconnect();
                    return news;
                }
                base.Disconnect();
                return null;
            }
            return null;
        }

        public List<News> GetByCategory(int categoryId)
        {
            if (base.DQLCommand(Procedure.buscarNoticias, ref this.Data,
                new string[,] {
                    {"pCategoria", categoryId.ToString()}
            }))
            {
                if (this.Data.HasRows)
                {
                    List<News> news = new List<News>();

                    while (this.Data.Read())
                    {
                        news.Add(
                           new News(
                               int.Parse(this.Data["cd_noticia"].ToString()),
                               this.Data["dt_noticia"].ToString(),
                               this.Data["hr_noticia"].ToString(),
                               this.Data["nm_titulo"].ToString(),
                               this.Data["nm_linha_fina"].ToString(),
                               this.Data["ds_noticia"].ToString(),
                               this.Data["dt_publicacao"].ToString(),
                               this.Data["hr_publicacao"].ToString(),
                               new Category().Get(
                                       int.Parse(this.Data["cd_categoria"].ToString())
                                       ),
                               int.Parse(this.Data["cd_situacao_noticia"].ToString()),
                               this.Data["nm_login"].ToString()
                           )
                       );
                    }
                    this.Data.Close();
                    base.Disconnect();
                    return news;
                }
                base.Disconnect();
                return null;
            }
            return null;
        }

        public bool Add()
        {
            if (base.DMLCommand(Procedure.criarNoticia, new string[,] {
                {"pTitulo", this.Headline},
                {"pLinhaFina", this.ThinLine},
                {"pConteudo", this.Content},
                {"PCategoria", this.NewsCategory.Id.ToString()}
            }))
            {
                return true;
            }
            return false;
        }
    }
}