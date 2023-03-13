using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;


namespace SeyahatWeb.Yonetim
{
    public partial class BlogKategori : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=GoTripDB2;Integrated Security=True");

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into BlogKategori (BKAd,BlogID) values (@Adi,@blogID)", conn);
            cmd.Parameters.AddWithValue("@adi",txtKatAd.Text);
            cmd.Parameters.AddWithValue("@blogID",DropBlog.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("BlogKategori.aspx");
        }

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            txtKatAd.Text = "";
            DropBlog.Items.Clear();
        }
    }
}