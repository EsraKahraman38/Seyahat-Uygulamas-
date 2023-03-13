using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb.Yonetim
{
    public partial class GaleriKategori : System.Web.UI.Page
    { 
        SqlConnection conn=new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKatEkle_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into GaleriKategori (GKAd,GaleriID) BlogID values (@adi,@galeriID)", conn);
            cmd.Parameters.AddWithValue("@adi",txtGalKatAd.Text);
            cmd.Parameters.AddWithValue("@galeriID", DropGaleri.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("GaleriKategori.aspx");
        }
        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            txtGalKatAd.Text = "";
            DropGaleri.Items.Clear();
        }
    }
}