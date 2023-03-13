using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb.Yonetim
{
    public partial class GaleriEkleSil : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnResimYukle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" ||
                   FileUpload1.PostedFile.ContentType == "image/png" ||
                   FileUpload1.PostedFile.ContentType == "image/jpg")   /*Dosya resim ve jpg olacak */
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/galeri/"+ResimAd));
                    lblResim.Text = ResimAd;
                }
                else
                {
                    lblResim.Text= "Lütfen jpg , jpeg veya png bağlantılı dosya seçin..";
                }
            }
            else
            {
                lblResim.Text = "Lütfen bir dosya seçin...";
            }
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Galeri(GBaslik,GResim,BlogID)values(@baslik,@resim,@blogIDID)", conn);
            cmd.Parameters.AddWithValue("@baslik", txtBaslik.Text);
            cmd.Parameters.AddWithValue("@resim",lblResim.Text);
            cmd.Parameters.AddWithValue("@blogCatID",DropBlog.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("GaleriEkleSil.aspx");
        }

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            txtBaslik.Text = "";
            txtResimAd.Text = "";
            DropBlog.Items.Clear();
        }

        
    }
}