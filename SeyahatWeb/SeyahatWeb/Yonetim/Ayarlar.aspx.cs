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
    public partial class Ayarlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnGuncelle.Enabled = false;
        }
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");

        protected void BtnYukle_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select*from Ayarlar",conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            txtMail.Text = dt.Rows[0]["Mail"].ToString();
            txtTel.Text = dt.Rows[0]["Telefon"].ToString();
            txtAdres.Text = dt.Rows[0]["Adres"].ToString();
            txtTwit.Text = dt.Rows[0]["Twitter"].ToString();
            txtYouTube.Text = dt.Rows[0]["YouTube"].ToString();
            txtInstagram.Text = dt.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = dt.Rows[0]["Facebook"].ToString();
            txtLinkedin.Text = dt.Rows[0]["Linkedin"].ToString();
            lblLogo.Text = dt.Rows[0]["Logo"].ToString();
            txtAciklama.Text = dt.Rows[0]["Aciklama"].ToString();
            lblID.Text=dt.Rows[0]["AyarlarID"].ToString();
            conn.Close();
            BtnGuncelle.Enabled = true;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update Ayarlar set Mail=@mail,Telefon=@telefon,Adres=@adres,Twitter=@twitter,Youtube=@youtube,Instagram=@instagram,Facebook=@facebook,Linkedin=@linkedin,Logo=@logo,Aciklama=@aciklama where AyarlarID=@ayarlarID",conn);
            cmd.Parameters.AddWithValue("@mail", txtMail.Text);
            cmd.Parameters.AddWithValue("@telefon", txtTel.Text);
            cmd.Parameters.AddWithValue("@adres",txtAdres.Text);
            cmd.Parameters.AddWithValue("@twitter", txtTwit.Text);
            cmd.Parameters.AddWithValue("@youtube", txtYouTube.Text);
            cmd.Parameters.AddWithValue("@instagram", txtYouTube.Text);
            cmd.Parameters.AddWithValue("@facebook", txtFacebook.Text);
            cmd.Parameters.AddWithValue("@linkedin", txtLinkedin.Text);
            cmd.Parameters.AddWithValue("@logo",lblLogo.Text);
            cmd.Parameters.AddWithValue("@aciklama", txtAciklama.Text);
            cmd.Parameters.AddWithValue("@ayarlarID",lblID.Text.ToString());
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Ayarlar.aspx");
        }

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            //foreach (var item in this.Controls)
            //{
            //    if (item is TextBox)
            //    {
            //        TextBox txt = (TextBox)item;
            //        txt.Text = "";
            //    }
            //    if (item is Label)
            //    {
            //        Label label = (Label)item;
            //        label.Text = "";
            //    }
            //}


            txtMail.Text = "";
            txtTel.Text = "";
            txtAdres.Text = "";
            txtTwit.Text = "";
            txtYouTube.Text = "";
            txtInstagram.Text = "";
            txtFacebook.Text = "";
            txtLinkedin.Text = "";
            lblLogo.Text = "";
            txtAciklama.Text = "";

        }
    }
}