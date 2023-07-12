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

namespace dotnetCPIS358
{
    public partial class upload : System.Web.UI.Page
    {
        string connstr = ConfigurationManager.ConnectionStrings["databse001ConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Get Filename from fileupload control

            string filename = fileuploadimages.PostedFile.FileName;
            //Save images into Images folder
            fileuploadimages.SaveAs(Server.MapPath("Images/" + filename));
            //Getting dbconnection from web.config connectionstring
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            //Open the database connection
            con.Open();
            //Query to insert images path and name into database
            SqlCommand cmd = new SqlCommand("Insert into TableImage(img,ImagePath) values(@ImageName,@ImagePath)", con);
            //Passing parameters to query
            cmd.Parameters.AddWithValue("@ImageName", filename);
            cmd.Parameters.AddWithValue("@ImagePath", "Images/" + filename);
            cmd.ExecuteNonQuery();
            //Close dbconnection
            con.Close();
            Label1.Text = "done";
        }
    }
}