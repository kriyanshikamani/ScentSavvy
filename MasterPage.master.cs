using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Literal1.Text = "<li class='nav-item'><a class='nav-link' href='login.aspx'>Login</a>";
        else
            Literal1.Text = "<li class='nav-item'><a class='nav-link' href='logout.aspx'>Logout</a>";


    }
}
