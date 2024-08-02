using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
	sqlsinif bgl = new sqlsinif();

	string id = "";
	string islem = "";

	protected void Page_Load(object sender, EventArgs e)
	{
		if (Page.IsPostBack == false)
		{
			id = Request.QueryString["Yemekid"];
			islem = Request.QueryString["islem"];

			//KATEGORİ LİSTESİ
			SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
			SqlDataReader dr2 = komut2.ExecuteReader();
			
			DropDownList1.DataTextField = "KategoriAd";
			DropDownList1.DataValueField = "Kategoriid";

			DropDownList1.DataSource = dr2;
			DropDownList1.DataBind();
		}

		Panel2.Visible = false;
		Panel4.Visible = false;

		//yemek listesi
		SqlCommand komut = new SqlCommand("Select * From Tbl_yemekler", bgl.baglanti());
		SqlDataReader dataReader = komut.ExecuteReader();
		DataList1.DataSource = dataReader;
		DataList1.DataBind();

        if (islem == "sil")
        {
			SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
			komut2.Parameters.AddWithValue("@p1", id);
			komut2.ExecuteNonQuery();
			bgl.baglanti().Close();
		}
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Panel2.Visible = true;
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Panel2.Visible = false;
	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		Panel4.Visible = true;
	}


	protected void Button4_Click(object sender, EventArgs e)
	{
		Panel4.Visible = false;
	}

	protected void btn_ekle_Click(object sender, EventArgs e)
	{
		//yemek ekleme
		SqlCommand komut3 = new SqlCommand("insert into tbl_yemekler (YemekAd, YemekMalzeme, YemekTarif, Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
		komut3.Parameters.AddWithValue("@p1", TextBox2.Text);
		komut3.Parameters.AddWithValue("@p2", TextBox3.Text);
		komut3.Parameters.AddWithValue("@p3", TextBox4.Text);
		komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
		komut3.ExecuteNonQuery();
		bgl.baglanti().Close();

		//kategori sayısını artırma
		SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", 
			bgl.baglanti());
		komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
		komut2.ExecuteNonQuery();
		bgl.baglanti().Close();
			
	}
}