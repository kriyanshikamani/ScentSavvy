using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        DataTable dt = db.getdata("select * from Admin where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'");
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script>alert('Invalid Username or password');window.location='login.aspx'</script>");
        }
        else
        {
            Session["aid"] = dt.Rows[0]["Id"].ToString();
            //  Session["unm"] = dt.Rows[0]["Username"].ToString();
            Response.Redirect("home.aspx");

        }
    }
}