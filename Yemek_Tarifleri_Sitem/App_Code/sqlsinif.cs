using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// sqlsinif için özet açıklama
/// </summary>
public class sqlsinif
{
	public SqlConnection baglanti()
	{
		SqlConnection baglan = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB; Initial Catalog=YemekTarifi; integrated Security=true;Max Pool Size=1000;Connection Timeout=300;");
		baglan.Open();
		return baglan;
	}
}