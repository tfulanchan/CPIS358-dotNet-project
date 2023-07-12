using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;
using System.Drawing;
using System.Linq.Expressions;
using System.IO;

namespace dotnetCPIS358
{
    public partial class EditInfo : System.Web.UI.Page
    {
        string connstr = ConfigurationManager.ConnectionStrings["databse001ConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button_insert(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            Response.Write("Inserted");
        }
        protected void Button_delete(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            Response.Write("Deleted");
        }

        protected void Button_update(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            Response.Write("Updated");
        }

        protected void Button_search(object sender, EventArgs e)
        {
            SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            Response.Write("Searched");
        }
    }
}