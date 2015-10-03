using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;

namespace Layout3
{
    public partial class SiteMaster : MasterPage
    {
        OleDbConnection connection = new OleDbConnection();
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Category.mdb;";
            try
            {
                connection.Open();
                string qry1 = "select Notice from FilesTable where Number="+1+"";
                OleDbCommand cmd1 = new OleDbCommand(qry1, connection);
                cmd1.ExecuteNonQuery();
                Label4.Text = cmd1.ExecuteScalar().ToString();

                string qry2 = "select Notice from FilesTable where Number=" + 2 + "";
                OleDbCommand cmd2 = new OleDbCommand(qry2, connection);
                cmd2.ExecuteNonQuery();
                Label5.Text = cmd2.ExecuteScalar().ToString();

                string qry3 = "select Notice from FilesTable where Number=" + 3 + "";
                OleDbCommand cmd3 = new OleDbCommand(qry3, connection);
                cmd3.ExecuteNonQuery();
                Label6.Text = cmd3.ExecuteScalar().ToString();

                string qry4 = "select PrincipalMessage from PrincipalSection where Number=" + 1 + "";
                OleDbCommand cmd4 = new OleDbCommand(qry4, connection);
                cmd4.ExecuteNonQuery();
                Label7.Text = cmd4.ExecuteScalar().ToString();

                string str = "select CategoryName from Category";
                OleDbDataAdapter adp = new OleDbDataAdapter(str, connection);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                DataList1.DataSource = dt;
                DataBind();


            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select Upload from FilesTable where Number=" + 1 + "";
                OleDbCommand cmd = new OleDbCommand(qry1, connection);
                cmd.ExecuteNonQuery();

                string fileName = cmd.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/Files/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }
        private string GetContentType(string fileExtension)
        {
            if (string.IsNullOrEmpty(fileExtension))
                return string.Empty;

            string contentType = string.Empty;
            switch (fileExtension)
            {
                case ".htm":
                case ".html":
                    contentType = "text/HTML";
                    break;

                case ".txt":
                    contentType = "text/plain";
                    break;

                case ".doc":
                case ".rtf":
                case ".docx":
                    contentType = "Application/msword";
                    break;

                case ".xls":
                case ".xlsx":
                    contentType = "Application/x-msexcel";
                    break;

                case ".jpg":
                case ".jpeg":
                    contentType = "image/jpeg";
                    break;

                case ".gif":
                    contentType = "image/GIF";
                    break;

                case ".pdf":
                    contentType = "application/pdf";
                    break;
            }

            return contentType;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select Upload from FilesTable where Number=" + 2 + "";
                OleDbCommand cmd = new OleDbCommand(qry1, connection);
                cmd.ExecuteNonQuery();

                string fileName = cmd.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/Files/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                string qry1 = "select Upload from FilesTable where Number=" + 3 + "";
                OleDbCommand cmd = new OleDbCommand(qry1, connection);
                cmd.ExecuteNonQuery();

                string fileName = cmd.ExecuteScalar().ToString();
                string fileExtension = ".txt/.jpg/.pdf/.docx/.xls";

                // Set Response.ContentType
                Response.ContentType = GetContentType(fileExtension);

                // Append header
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);

                // Write the file to the Response
                Response.TransmitFile(Server.MapPath("~/Files/" + fileName));
                Response.End();
            }
            catch
            { }
            finally
            {
                connection.Close();
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DynamicMenu.aspx");
        }
    }
}