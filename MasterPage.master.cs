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
        {
            Literal1.Text = "<li class='nav-item'><a class='nav-link font-weight-bold' href='login.aspx' style='font-size: 18px; color: #b38b6d;'>Login</a>";
        }
        else
        {
            Literal1.Text = "<li class='nav-item'><a class='nav-link font-weight-bold' href='logout.aspx' style='font-size: 18px; color: #b38b6d;'>Logout</a>";

        }

    }
}
