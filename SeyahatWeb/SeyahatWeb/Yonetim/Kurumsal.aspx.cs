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
    public partial class Kurumsal : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Kurumsal (KBaslik,KOzet,KDetay,TurPaketID) values (@baslik,@ozet,@detay,@turPaketID)", conn);
            cmd.Parameters.AddWithValue("@baslik", txtBaslik.Text);
            cmd.Parameters.AddWithValue("@ozet", txtOzet.Text);
            cmd.Parameters.AddWithValue("@detay", txtDetay.Text);
            cmd.Parameters.AddWithValue("@turPaketID", DropTurPaket.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Kurumsal.aspx");
        }

        //protected void BtnGuncelle_Click(object sender, EventArgs e)
        //{
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("Update Kurumsal set Baslik=@baslik,Ozet=@ozet,Detay=@detay where TurPaketID=@turPaketID", conn);
        //    cmd.Parameters.AddWithValue("@baslik", txtBaslik.Text);
        //    cmd.Parameters.AddWithValue("@ozet", txtOzet.Text);
        //    cmd.Parameters.AddWithValue("@detay", txtDetay.Text);
        //    cmd.Parameters.AddWithValue("@turPaketID", lblID.Text.ToString());
        //    cmd.ExecuteNonQuery();
        //    conn.Close();
        //    Response.Redirect("Kurumsal.aspx");
        //}

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            //foreach (var item in this.Controls)
            //{
            //    if (item is TextBox)
            //    {
            //        TextBox txt = (TextBox)item;
            //        txt.Text = "";
            //    }
            //}

            Temizle();
        }

        private void Temizle()
        {
            txtBaslik.Text = "";
            txtOzet.Text = "";
            txtDetay.Text = "";
            DropTurPaket.Items.Clear();
        }

    }
}