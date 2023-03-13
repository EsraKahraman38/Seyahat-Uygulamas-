using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public static string sifrele(string sifre)
        {
            string hash = "yahya";
            byte[] data = UTF8Encoding.UTF8.GetBytes(sifre);
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                {
                    ICryptoTransform transform = tripDes.CreateEncryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    return Convert.ToBase64String(results, 0, results.Length);
                }
            }
        }
        public static string coz(string sifrelenmisDeger)
        {
            string hash = "yahya";

            byte[] data = Convert.FromBase64String(sifrelenmisDeger);
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                {
                    ICryptoTransform transform = tripDes.CreateDecryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    return Encoding.Default.GetString(results);
                }
            }
        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Kullanici where UserName=@userName ", conn);
            SqlCommand cmd2 = new SqlCommand("Select Sifre from Kullanici where UserName=@userName", conn);
            cmd2.Parameters.AddWithValue("@userName", txtKulAdi.Text);
            var sifreveri = cmd2.ExecuteScalar();

            string cozunen = coz(sifreveri.ToString());

            cmd.Parameters.AddWithValue("@userName", txtKulAdi.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (cozunen == txtSifre.Text)
            {
                Session["Kullanici"] = dr["UserName"].ToString();
                Response.Redirect("~/Yonetim/Default.aspx");
            }
            else
            {
                lblUnuttum.Text = "Kullanıcı Adı veya Sifre Hatalı..";
            }


            dr.Close();
            conn.Close();
            conn.Dispose(); //Bağlantıyı yok et
        }

        protected void YeniKayit_Click(object sender, EventArgs e)
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Kullanici (UserName,Sifre,Ad,Soyad,Mail) values (@UserName ,@Sifre,@ad,@soyad,@mail )", conn);

            string sifre = sifrele(txtSifre.Text);
            cmd.Parameters.AddWithValue("@userName", txtKulAdi.Text);
            cmd.Parameters.AddWithValue("@ad", txtKulAdi.Text);
            cmd.Parameters.AddWithValue("@soyad", txtKulAdi.Text);
            cmd.Parameters.AddWithValue("@mail", txtKulAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", sifre);
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Close();
            conn.Close();
            conn.Dispose(); //Bağlantıyı yok et

        }
    }
}