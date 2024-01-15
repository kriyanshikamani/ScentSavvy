using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox4.Text = Session["total"].ToString();
        TextBox4.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        db.setdata("insert into Payment values('" + Session["uid"].ToString() + "','" + TextBox4.Text + "', '" + TextBox2.Text + "' , '" + TextBox1.Text + "','" + TextBox3.Text + "')");
        DataTable dt = db.getdata("Select * from Cart where Custid = " + Session["uid"].ToString() + "");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            db.setdata("insert into orders values ('" + Session["uid"].ToString() + "','" + dt.Rows[i]["Prodid"].ToString() + "','" + dt.Rows[i]["Qty"].ToString() + "','" + dt.Rows[i]["Amount"].ToString() + "')");
        }
       // db.setdata("delete from Cart where Custid = '" + Session["uid"].ToString() + "'");

        Response.Write("<script>alert('your order palced successfully');window.location='bill.aspx';</script>");

    }
}