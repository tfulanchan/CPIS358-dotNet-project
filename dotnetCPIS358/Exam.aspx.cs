using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class Exam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.AffectedRows == 0)
            {
                SqlDataSource1.Insert();
            }
            else
            {
                // User already exists in the database
                error.Text = "user already exist";
            }
        }
        protected void Insert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();

            HttpCookie cookie = new HttpCookie("examCookie");
            cookie["ID"] = IDBox.Text;
            cookie["FirstName"] = FirstNameBox.Text;
            cookie["Email"] = EmailBox.Text;
            cookie.Expires = DateTime.Now.AddSeconds(60);

            Response.Cookies.Add(cookie);
            Response.Redirect("search_page.aspx");
        }
    }
}