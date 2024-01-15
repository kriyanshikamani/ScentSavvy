using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
       DataTable dt = db.getdata("select * from Registration where Username ='" + TextBox5.Text + "'");
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('This Username already registred');window.location='register.aspx'</script>");
        }
        else
        {
            db.setdata("insert into Registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')");
            Response.Write("<script>alert('User Created');window.location='login" +
                ".aspx'</script>");

        }
    }
}