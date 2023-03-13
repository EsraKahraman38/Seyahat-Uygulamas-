using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");

        string bugun = DateTime.Today.ToString();       /* Tarih kısmını kontrol ettt*/
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
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
                    FileUpload1.SaveAs(Server.MapPath("~/images/blog" + ResimAd));   /*kök dizindeki images klasörünün içine atcaz*/
                                                                                        /*Blog için images içinde farklı bir klasör oluşturduk*/
                    lblResim.Text = ResimAd;
                }
                else
                {
                    lblResim.Text = "Lütfen jpg , jpeg veya png bağlantılı dosya seçin..";
                }
            }
            else
            {
                lblResim.Text = "Lütfen bir dosya seçin..";
            }
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Blog(BBaslik,BOzet,BResim,BDetay,Tarih) values (@baslik,@ozet,@resim,@detay,@tarih) ", conn);
            cmd.Parameters.AddWithValue("@baslik", txtBaslik.Text);
            cmd.Parameters.AddWithValue("@ozet", txtOzet.Text);
            cmd.Parameters.AddWithValue("@resim", lblResim.Text);
            cmd.Parameters.AddWithValue("@detay", txtDetay.Text);
            cmd.Parameters.AddWithValue("@tarih", bugun);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("BlogEkle.aspx");
        }

        protected void BtnVazgec_Click(object sender, EventArgs e)   // Foreach çalışmıyordu tekrar bakk
        {
            txtBaslik.Text = "";
            txtOzet.Text = "";
            FileUpload1.Controls.Clear();
            txtDetay.Text = "";
        }
    }
}