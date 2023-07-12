using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dotnetCPIS358
{
    public partial class Seearch : System.Web.UI.Page
    {
        string con_str = ConfigurationManager.ConnectionStrings["databse001ConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void search()
        {
            string myQuerry = "select * from signup where UserName = '"+TextBox1.Text+"'";
            SqlConnection connection = new SqlConnection(con_str);
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = myQuerry;

            SqlDataAdapter da = new SqlDataAdapter(command);
            
            DataSet ds = new DataSet();
            da.Fill(ds); //data adapter not available except via dataset

            GridView1.DataSource = ds.Tables[0]; //show first table
            GridView1.DataBind(); //Make visible

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            search();
        }
    }
}