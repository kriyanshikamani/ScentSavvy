using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment_options : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("card.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
}