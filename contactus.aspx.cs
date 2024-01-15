using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button1_Click(object sender, EventArgs e)
    {
        
            }
    protected void button1_Click1(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        db.setdata("insert into Feedback values('" + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','" + textbox4.Text + "')");
        Response.Write("<script>alert('Message Sent');window.location='home.aspx';</script>");

    }
}