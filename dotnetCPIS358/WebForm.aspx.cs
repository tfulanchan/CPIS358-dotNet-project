using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                bool saveId = Request.Form["saveId"] == "on";

                if (username == "admin" && password == "password")
                {
                    Session["username"] = username;

                    if (saveId)
                    {
                        HttpCookie cookie = new HttpCookie("username", username);
                        cookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie);
                    }
                    else
                    {
                        HttpCookie cookie = Request.Cookies["username"];
                        if (cookie != null)
                        {
                            cookie.Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies.Add(cookie);
                        }
                    }

                    Response.Redirect("Default.aspx");
                }
                else
                {
                    //errorLabel.Text = "Invalid username or password.";
                }
            }
        }
    }
}