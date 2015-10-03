using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

namespace Layout3.Admin
{
    public partial class ShowMenu : System.Web.UI.Page
    {

        //static string cs = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            ////string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            ////OleDbConnection connection = new OleDbConnection(cs1);
            string cs = (Server.MapPath("~/Database/Category.accdb"));
            Response.Write(cs);
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";

//            connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=cs\Category.accdb;
//Persist Security Info=False;";
            try
            {
                connection.Open();
                string str = "select * from Category";
                OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                //GridView1.DataSource = dt;
                DataBind();
            }
            catch (Exception exp)
            {
                Response.Write(exp.ToString());
            }
            finally
            {
                connection.Close();
            }
        }


    }
}