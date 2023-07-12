using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class SessionRedirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Column1"] != null)
            {
                lblColumn1.Text = Session["Column1"].ToString();
            }
            if (Session["Column2"] != null)
            {
                lblColumn2.Text = Session["Column2"].ToString();
            }
        }
    }
}