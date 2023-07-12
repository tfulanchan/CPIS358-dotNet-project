using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Request["Err"] != null)
                {
                    Label1.Text = Request["Err"].ToString();
                }
            
        }
        void Bind()
        {
            Label1.Text = "Your session is valid";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                if (tbUserName.Text == "admin" && tbpwd.Text == "password")
                {
                Label1.Text = "Logging in";

                Session["UNAME"] = tbUserName.Text;
                    Response.Redirect("Logedin.aspx");
                    return;
                }
                else
                {
                    Label1.Text = "Please use the correct password";
                }
        }
    }
}