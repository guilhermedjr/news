using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website.Classes
{
    static class clsConnectionString
    {
        /// <summary>
        /// Local Host Properties
        /// </summary>
        public static readonly string Server = "localhost";
        public static readonly string User = "root";
        public static readonly string Password = "root";
        public static readonly string Schema = "prjNoticias";

        /// <summary>
        /// Remote Host Properties
        /// </summary>
        //public static readonly string Server = "";
        //public static readonly string User = "";
        //public static readonly string Password = "";
        //public static readonly string Schema = "";

        public static string getConnectionString()
        {
            return String.Format("SERVER = {0};USER = {1};PASSWORD = {2};DATABASE = {3};", 
                Server, User, Password, Schema);
        }
    }
}