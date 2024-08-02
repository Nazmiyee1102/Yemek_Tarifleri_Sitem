using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
	sqlsinif bgl = new sqlsinif();
	string id = "";

	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["Tarifid"];

        if (Page.IsPostBack == false)
        {
			SqlCommand komut = new SqlCommand("Select * from tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", id);
			SqlDataReader dr = komut.ExecuteReader();
			while (dr.Read())
			{
				txt_ad.Text = dr[1].ToString();
				txt_malzeme.Text = dr[2].ToString();
				txt_yapilis.Text = dr[3].ToString();
				txt_oneren.Text = dr[4].ToString();
				txt_mail.Text = dr[5].ToString();
			}
			bgl.baglanti().Close();

			//KATEGORİ LİSTESİ
			SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
			SqlDataReader dr2 = komut2.ExecuteReader();

			DropDownList1.DataTextField = "KategoriAd";
			DropDownList1.DataValueField = "Kategoriid";

			DropDownList1.DataSource = dr2;
			DropDownList1.DataBind();
		}

       
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		//durum güncelleme
		SqlCommand komut = new SqlCommand("Update tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
		komut.Parameters.AddWithValue("@p1", id);
		komut.ExecuteNonQuery();
		bgl.baglanti().Close();

		//yemeği ana sayfaya ekleme
		SqlCommand komut2 = new SqlCommand("insert into tbl_Yemekler(YemekAd, YemekMalzeme, YemekTarif, Kategoriid) values(@p1, @p2, @p3, @p4)", bgl.baglanti());
		komut2.Parameters.AddWithValue("@p1", txt_ad.Text);
		komut2.Parameters.AddWithValue("@p2", txt_malzeme.Text);
		komut2.Parameters.AddWithValue("@p3", txt_yapilis.Text);
		komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
		komut2.ExecuteNonQuery();
		bgl.baglanti().Close();
	}
}