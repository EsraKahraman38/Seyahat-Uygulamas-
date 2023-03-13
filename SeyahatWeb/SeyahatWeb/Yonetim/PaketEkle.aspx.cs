using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace SeyahatWeb.Yonetim
{
    public partial class PaketEkle : System.Web.UI.Page
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
                    FileUpload1.SaveAs(Server.MapPath("~/images/paket" + ResimAd));   /*kök dizindeki images klasörünün içine atcaz*/
                    lblResim.Text = ResimAd;
                }
                else
                {
                    lblResim.Text = "Lütfen jpg , jpeg veya png bağlantılı dosya seçin..";
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
            SqlCommand cmd = new SqlCommand("insert into TurPaket (TPAdi,TPFiyat,TPSure,TPKonum,TPResim,TPDetay,BlogKategoriID) values (@adi,@fiyat,@sure,@konum,@resim,@detay,@blogKatID)", conn);
            cmd.Parameters.AddWithValue("@adi", txtAd.Text);
            cmd.Parameters.AddWithValue("@fiyat", Convert.ToInt32(txtFiyat.Text));
            cmd.Parameters.AddWithValue("@sure", Convert.ToInt32(txtSure.Text));
            cmd.Parameters.AddWithValue("@konum", txtKonum.Text);
            cmd.Parameters.AddWithValue("@detay", txtDetay.Text);
            cmd.Parameters.AddWithValue("@resim", lblResim.Text);
            cmd.Parameters.AddWithValue("@blogKatID", DropBlogKat.SelectedValue);

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("PaketEkle.aspx");
        }

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            txtAd.Text = "";
            txtDetay.Text = "";
            txtFiyat.Text = "";
            txtKonum.Text = "";
            txtSure.Text = "";
            FileUpload1.Controls.Clear();
            DropBlogKat.Items.Clear();
        }
    }
}