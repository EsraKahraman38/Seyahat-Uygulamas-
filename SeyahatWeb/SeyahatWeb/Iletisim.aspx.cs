using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb
{
    public partial class Iletisim : System.Web.UI.Page
    {
        GoTripDB2Entities db = new GoTripDB2Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click1(object sender, EventArgs e)
        {
            Iletisim kisiler = new Iletisim();
            kisiler.AdSoyad = txtAdSoyad.Text;
            kisiler.Mail = txtEposta.Text;
            kisiler.Konu = txtKonu.Text;
            kisiler.Mesaj = txtMesaj.Text;

            try
            {
                db.Iletisim.Add(kisiler);
                db.SaveChanges();
                lblDurum.Text = "Mesajınız gönderildi..";
            }
            catch (Exception)
            {

                lblDurum.Text = "İletilemedi..!";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Iletisim kisiler = new Iletisim();
            kisiler.AdSoyad = txtAdSoyad.Text;
            kisiler.Mail = txtEposta.Text;
            kisiler.Konu = txtKonu.Text;
            kisiler.Mesaj = txtMesaj.Text;

            try
            {
                db.Iletisim.Add(kisiler);
                db.SaveChanges();
                lblDurum.Text = "Mesajınız gönderildi..";
            }
            catch (Exception)
            {

                lblDurum.Text = "İletilemedi..!";
            }
        }
    }
}