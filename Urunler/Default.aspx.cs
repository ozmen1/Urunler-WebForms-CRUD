using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Urunler
{
    public partial class Default : System.Web.UI.Page
    {
        Urunler_VTEntities baglanti = new Urunler_VTEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            Urunler urunEkle = new Urunler();

            urunEkle.UrunKodu = int.Parse(tbxUrunKodu.Text);
            urunEkle.UrunAdi = tbxUrunAdi.Text;
            urunEkle.BirimFiyat = int.Parse(tbxBirimFiyati.Text);
            urunEkle.StokMiktari = int.Parse(tbxStokMiktari.Text);
            urunEkle.UrunAciklama = tbxUrunAciklama.Text;

            try
            {
                baglanti.Urunler.Add(urunEkle);
                baglanti.SaveChanges();
                lblSonuc.Text = "Kayıt Başarıyla Gerçekleşti";
            }
            catch (Exception)
            {
                lblSonuc.Text = "Kayıt Eklenemedi hata çıktı";
            }
        }

        protected void btnListele_Click(object sender, EventArgs e)
        {
            baglanti.Urunler.Load();
            GridView1.DataSource = baglanti.Urunler.Local;
            GridView1.DataBind();

        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            int urunKodu = int.Parse(tbxUrunKodu.Text);
            var sorgu = (from kayit in baglanti.Urunler
                         where kayit.UrunKodu == urunKodu
                         select kayit).ToList();

            if (sorgu.Count == 1)
            {
                baglanti.Urunler.Remove(sorgu[0]);
                baglanti.SaveChanges();
                lblSonuc.Text = "Kayıt Başarıyla Silindi";
            }
            else
            {
                lblSonuc.Text = "Kayıt Bulunamadı yada silme hata çıktı";
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int urunKodu = Convert.ToInt32(tbxUrunKodu.Text);
            var sorgu = (from kayit in baglanti.Urunler
                         where kayit.UrunKodu == urunKodu
                         select kayit).ToList();

            if (sorgu.Count == 1)
            {
                sorgu[0].UrunAdi = tbxUrunAdi.Text;
                sorgu[0].BirimFiyat = int.Parse(tbxBirimFiyati.Text);
                sorgu[0].StokMiktari = int.Parse(tbxStokMiktari.Text);
                sorgu[0].UrunAciklama = tbxUrunAciklama.Text;
                baglanti.SaveChanges();
                lblSonuc.Text = "Kayıt Başarıyla Güncellendi";
            }
            else
            {
                lblSonuc.Text = "Kayıt Bulunamadı yada güncellemede hata çıktı";
            }
        }
    }
}