using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
	sqlsinif bgl = new sqlsinif();
	string id = "";

	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["Yorumid"];

		if (Page.IsPostBack == false)
		{
			SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail, Yorumicerik, YemekAd From Tbl_Yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", id);
			SqlDataReader dataReader = komut.ExecuteReader();
			while (dataReader.Read())
			{
				txt_ad.Text = dataReader[0].ToString();
				txt_mail.Text = dataReader[1].ToString();
				txt_icerik.Text = dataReader[2].ToString();
				txt_yemek.Text = dataReader[3].ToString();
			}
			bgl.baglanti().Close();
		}	
    }

	protected void btn_onayla_Click(object sender, EventArgs e)
	{
		SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set yorumicerik=@p1, yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
		komut.Parameters.AddWithValue("@p1",txt_icerik.Text);
		komut.Parameters.AddWithValue("@p2", "true");
		komut.Parameters.AddWithValue("@p3", id);
		komut.ExecuteNonQuery();
		bgl.baglanti().Close();	
	}
}