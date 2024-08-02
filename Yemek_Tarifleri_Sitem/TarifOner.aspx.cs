using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
	sqlsinif bgl = new sqlsinif();

	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void btn_oner_Click(object sender, EventArgs e)
    {
		SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd, TarifMalzeme, TarifYapilis, TarifResim, TarifSahip, TarifSahipMail) values(@t1, @t2, @t3, @t4, @t5, @t6)", bgl.baglanti());
		komut.Parameters.AddWithValue("@t1", txt_tarif_ad.Text);
		komut.Parameters.AddWithValue("@t2", txt_Malzemeler.Text);
		komut.Parameters.AddWithValue("@t3", txt_yapilis.Text);
		komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
		komut.Parameters.AddWithValue("@t5", txt_tarif_oneren.Text);
		komut.Parameters.AddWithValue("@t6", txt_mail_adresi.Text);
		komut.ExecuteNonQuery();
		bgl.baglanti().Close();
		Response.Write("Tarifiniz Alınmıştır");
	}
}