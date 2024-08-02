using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
	sqlsinif bgl = new sqlsinif();
	string id = "";

	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["Mesajid"];
		SqlCommand cmd = new SqlCommand("Select * from tbl_Mesajlar where mesajid=@p1", bgl.baglanti());
		cmd.Parameters.AddWithValue("@p1", id);
		SqlDataReader dataReader = cmd.ExecuteReader();
        while (dataReader.Read())
        {
			TextBox2.Text = dataReader[1].ToString();
			TextBox3.Text = dataReader[2].ToString();
			TextBox4.Text = dataReader[3].ToString();
			TextBox5.Text = dataReader[4].ToString();
		}
		bgl.baglanti().Close();
    }
}