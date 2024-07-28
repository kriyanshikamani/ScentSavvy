using System;
using System.Collections.Generic;
 
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Dbo
/// </summary>
/// 
public class Dbo
{
    public string str;
    public SqlConnection con;
    public SqlCommand com;
    public SqlDataAdapter da;
    public DataTable dt;
	public Dbo()
	{
        str = @"Data Source=RADHE-KRISHNA\SQLEXPRESS01;Initial Catalog=PefumeShopdb;Integrated Security=True";
        con = new SqlConnection(str);
         con.Open();
	}
    public void setdata(string query)
    {
       // com = new SqlCommand(query, con);
       //// com.ExecuteNonQuery();
       // com.ExecuteReader();


        if (com != null) // Check if the command is not null
        {
            com.Dispose(); // Dispose the command object
        }

        com = new SqlCommand(query, con);
        com.ExecuteNonQuery(); //
    }

    public DataTable getdata(string query)
    {
        da = new SqlDataAdapter(query, con); // Pass SqlConnection object instead of connection string
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}