using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class CookieRedirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           HttpCookie cookie = Request.Cookies["ItemInfo"];
           if (cookie != null)
            {
                ItemNumber.Text = cookie["Number"];
                ItemName.Text = cookie["Name"];
            }
        }
    }
}