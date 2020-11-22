using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace Website.Classes
{
    public class Category : clsDatabase
    {
        public int Id {get; set;}
        public string Name {get; set;}

        private MySqlDataReader Data = null;

        public Category(): base()
        {
        }

        public Category(int id, string name): base()
        {
            this.Id = id;
            this.Name = name;
        }

        public Category Get(int id)
        {
            if (base.DQLCommand(Procedure.buscarCategoria, ref this.Data,
                new string[,] {
                    {"pCategoria", id.ToString()}
            }))
            {
                if (this.Data.HasRows)
                {
                    Category category = null;

                    if (this.Data.Read())
                    {
                        category = new Category(
                            id, this.Data["nm_categoria"].ToString());
                    }
                    this.Data.Close();
                    base.Disconnect();
                    return category;
                }
                base.Disconnect();
                return null;
            }
            return null;
        }

       
        public List<Category> GetAll()
        {
            if (base.DQLCommand("SELECT * from categoria", ref this.Data))
            {
                if (this.Data.HasRows)
                {
                    List<Category> categories = new List<Category>();
                    while (this.Data.Read())
                    {
                        categories.Add(
                            new Category(
                                int.Parse(this.Data["cd_categoria"].ToString()),
                                this.Data["nm_categoria"].ToString()
                            )
                        );
                    }
                    this.Data.Close();
                    base.Disconnect();
                    return categories;
                }
                base.Disconnect();
                return null;
            }
            return null;
        }
    }
}