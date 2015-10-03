using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Data;

namespace Layout3.Admin
{
    public partial class AddMenuItem : System.Web.UI.Page
    {
        
         //OleDbConnection connection = new OleDbConnection();
       // static string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            //string path = HttpContext.Current.Server.MapPath("~/Database/Category.accdb");
            //Response.Write(path);
            //connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Persist Security Info=False;";
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
        }

    

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
               try
            {
                connection.Open();
                string str = "insert into Category(CategoryName) values ('" + TextBox1.Text + "')";
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                TextBox1.Text = string.Empty;
                Label1.Text = "Category has been created";
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
    
