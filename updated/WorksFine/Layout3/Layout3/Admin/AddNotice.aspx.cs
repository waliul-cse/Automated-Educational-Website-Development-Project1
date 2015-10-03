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
    public partial class AddNotice2 : System.Web.UI.Page
    {
        //static string cs1 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        OleDbConnection connection = new OleDbConnection();
        string path="";


        protected void Page_Load(object sender, EventArgs e)
        {
//             connection.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\XISAN\Desktop\Database\Category.accdb;
//Persist Security Info=False;";
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {

                connection.Open();
                if (!IsPostBack)
                {
                    OleDbDataReader myReader;
                    string command2 = "select * from Category";
                    OleDbCommand cmd2 = new OleDbCommand(command2, connection);
                    myReader = cmd2.ExecuteReader();
                    while (myReader.Read())
                    {
                        string sName = myReader.GetString(1);
                        DropDownList1.Items.Add(sName);
                    }
                }

            }
            catch (Exception exp)
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         try
            {
                if (FileUpload1.HasFile)
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath("~/uploads/") + str);
                    path = "~//uploads//" + str.ToString();
                }
                Label2.Text = path;
                connection.Open();
                string qry = "insert into AddNotice values ('" + DropDownList1.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + path.ToString() + "','" + FreeTextBox1.Text + "')";
                OleDbCommand cmd = new OleDbCommand(qry, connection);
                Label2.Text = DropDownList1.SelectedItem.ToString();
                cmd.ExecuteNonQuery();
                Label2.Text = "Data has been stored";
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
        
    
