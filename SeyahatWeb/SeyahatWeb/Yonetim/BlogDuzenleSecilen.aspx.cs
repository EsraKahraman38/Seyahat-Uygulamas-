using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb.Yonetim
{
    public partial class BlogDuzenleSecilen : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB;Integrated Security=True");
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnGuncelle.Enabled = false;
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
                    FileUpload1.SaveAs(Server.MapPath("~/images/blog/" + ResimAd));
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

        protected void BtnYukle_Click(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select*from Blog where BlogKategoriID=@BlogCatID", conn);
                cmd.Parameters.AddWithValue("@BlogCatID", Request.QueryString["BlogKategoriID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                txtBaslik.Text = dt.Rows[0]["Baslik"].ToString();
                txtOzet.Text = dt.Rows[0]["Ozet"].ToString();
                lblResim.Text = dt.Rows[0]["Resim"].ToString();
                txtDetay.Text = dt.Rows[0]["Detay"].ToString();
                lblTarih.Text = dt.Rows[0]["Tarih"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["BlogKategoriID"].ToString();

                conn.Close();
                BtnGuncelle.Enabled = true;
            }
            else
            {
                Response.Redirect("BlogEkle.aspx");
            }
        }

        protected void BtnGuncelle_Click1(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update Blog set (Baslik=@baslik, Ozet=@ozet, Resim=@resim, Detay=@detay, Tarih=@tarih where  BlogKategoriID=@blogkatID)", conn);
            cmd.Parameters.AddWithValue("@BlogCatID", Request.QueryString["BlogKategoriID"]);
            cmd.Parameters.AddWithValue("@baslik", txtBaslik.Text);
            cmd.Parameters.AddWithValue("@ozet", txtOzet.Text);
            cmd.Parameters.AddWithValue("@resim", lblResim.Text);
            cmd.Parameters.AddWithValue("@detay", txtDetay.Text);
            cmd.Parameters.AddWithValue("@tarih", Convert.ToDateTime(lblTarih.Text));
            cmd.Parameters.AddWithValue("@blogkatID", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("BlogEkle.aspx");
        }
    }
}