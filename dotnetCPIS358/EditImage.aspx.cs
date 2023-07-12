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
    public partial class EditImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImages();
        }
        private void LoadImages()
        {
            string connstr = ConfigurationManager.ConnectionStrings["databse001ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connstr))
            {
                SqlCommand cmd = new SqlCommand("Select * from TableImage", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView2.DataSource = rdr;
                GridView2.DataBind();
            }
        }
        protected void Button_upload(object sender, EventArgs e)
        {
            //Get Filename from fileupload control
            //string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string filename = FileUpload2.FileName;
            string imagepath = Server.MapPath("/Upload/" + FileUpload2.FileName);
            //Save images into Images folder
            FileUpload2.SaveAs(Server.MapPath("Upload/" + filename));
            SqlDataSource2.Insert();
            LoadImages();
            Label6.Text = "l";
            Response.Redirect("EditImage.aspx");

        }
    }
}