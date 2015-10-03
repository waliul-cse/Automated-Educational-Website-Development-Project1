using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Layout3
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string str = "update PrincipalSection set PrincipalMessage = '" + TextBox1.Text + "' where (Number = " + 1 + ")";
                connection.Open();
                OleDbCommand cmd = new OleDbCommand(str, connection);
                cmd.ExecuteNonQuery();
                TextBox1.Text = String.Empty;
                Label2.Text = "Data saved";
            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }
    }
}