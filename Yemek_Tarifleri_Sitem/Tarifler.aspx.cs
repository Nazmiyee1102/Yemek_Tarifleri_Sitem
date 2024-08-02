﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tarifler : System.Web.UI.Page
{
	sqlsinif bgl = new sqlsinif();

	protected void Page_Load(object sender, EventArgs e)
	{
		Panel2.Visible = false;
		Panel4.Visible = false;

		//onaysız tarif listesi
		SqlCommand komut = new SqlCommand("Select * from tbl_tarifler where TarifDurum=0", bgl.baglanti());
		SqlDataReader dr = komut.ExecuteReader();
		DataList1.DataSource = dr;
		DataList1.DataBind();

		//onaylı tarif listesi
		SqlCommand komut2 = new SqlCommand("Select * from tbl_tarifler where TarifDurum=1", bgl.baglanti());
		SqlDataReader dr2 = komut2.ExecuteReader();
		DataList2.DataSource = dr2;
		DataList2.DataBind();
	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		Panel4.Visible = true;
	}

	protected void Button4_Click(object sender, EventArgs e)
	{
		Panel4.Visible = false;
	}

	protected void Button1_Click1(object sender, EventArgs e)
	{
		Panel2.Visible = true;
	}

	protected void Button2_Click1(object sender, EventArgs e)
	{
		Panel2.Visible = false;
	}


}
