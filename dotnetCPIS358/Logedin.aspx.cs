using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        void Bind()
        {
            Label1.Text = "Session starts and valid for only 1 minute.";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
                Session.Timeout = 1;  //will set the session time out for this particular page.
                if (Session["UNAME"] == null)
                {
                Label1.Text = "Bye";
                Response.Redirect("Login.aspx");
                return;
                }
                Bind();
        }

    }
}