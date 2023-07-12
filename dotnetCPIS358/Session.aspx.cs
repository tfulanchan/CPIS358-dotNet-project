using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetCPIS358
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSendData_Click(object sender, EventArgs e)
        {
            Session["Column1"] = txtColumn1.Text;
            Session["Column2"] = txtColumn2.Text;
            Response.Redirect("SessionRedirect.aspx");
        }
    }
}