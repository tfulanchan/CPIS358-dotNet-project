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
    public partial class crud : System.Web.UI.Page
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

        protected void Button_Update(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                //Get Filename from fileupload control
                string Path = Server.MapPath("/Upload/" + FileUpload1.FileName);
                //Save images into Images folder
                FileUpload1.SaveAs(Path);
                //Getting dbconnection from web.config connectionstring
                SqlConnection con = new SqlConnection(connstr);
                //Open the database connection
                con.Open();
                //Query to insert images path and name into database
                SqlCommand cmd = new SqlCommand("INSERT INTO signup(ID, UserName, Email, Password, img_path) values(@ID, @username, @Email, @Password, @ImagePath)", con);
                //Passing parameters to query
                cmd.Parameters.AddWithValue("@ID", ID_textbox.Text);
                cmd.Parameters.AddWithValue("@UserName", username_textbox.Text);
                cmd.Parameters.AddWithValue("@Email", email_textbox.Text);
                cmd.Parameters.AddWithValue("@Password", password_textbox.Text);
                cmd.Parameters.AddWithValue("@ImagePath", Path);
                cmd.ExecuteNonQuery();
            }

        }
    }
}