using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Layout3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        OleDbConnection connection = new OleDbConnection();
        PagedDataSource pg = new PagedDataSource();
        string menuName = "";
        int pos;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos = (int)this.ViewState["vs"];
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                string str = "select CategoryName from Category";
                OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                DataList1.DataSource = dt;
                DataBind();
            }
            catch (Exception exp)
            {

            }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton myButton = sender as LinkButton;
            Label5.Text = myButton.Text;
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            string str = "select sName,Image,Description from AddNotice where Category='" + myButton.Text + "'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            //GridView1.DataSource=dt;
            //DataList2.DataSource = dt;
            //DataBind();
            pg.DataSource = dt.DefaultView;

            pg.AllowPaging = true;
            pos = 0;
            pg.CurrentPageIndex = pos;
            pg.PageSize = 3;
            DataList2.DataSource = pg;
            DataList2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            pos = (int)this.ViewState["vs"];
            pos += 1;
            this.ViewState["vs"] = pos;
            string str = "select sName,Image,Description from AddNotice where Category='" + Label5.Text + "'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            //DataList2.DataSource = dt;

            pg.DataSource = dt.DefaultView;

            pg.AllowPaging = true;
            pg.CurrentPageIndex = pos;
            pg.PageSize = 3;
            DataList2.DataSource = pg;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pos = (int)this.ViewState["vs"];
            pos -= 1;
            this.ViewState["vs"] = pos;
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            string str = "select sName,Image,Description from AddNotice where Category='" + Label5.Text + "'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            //DataList2.DataSource = dt;

            pg.DataSource = dt.DefaultView;

            pg.AllowPaging = true;
            pg.CurrentPageIndex = pos;
            pg.PageSize = 3;
            DataList2.DataSource = pg;
            DataList2.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}