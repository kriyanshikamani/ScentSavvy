using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");

        string str = "";
        Dbo db = new Dbo();

        if (Request.QueryString["t1"] != null)
            db.setdata("delete from cart where Id = " + Request.QueryString["t1"].ToString() + "");

        DataTable dt = db.getdata("select * from Cart where Custid = " + Session["uid"] + "");

        int total = 0;
        Literal1.Text = dt.Rows.Count.ToString();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DataTable dt1 = db.getdata("select * from products where Id = " + dt.Rows[i]["Prodid"].ToString() + "");

            str += " <div class='row mb-4 d-flex justify-content-between align-items-center bg-grey p-2'>";
            str += "    <div class='col-md-2 col-lg-2 col-xl-2'>";
            str += "        <img src='Project_images/" + dt1.Rows[0]["Image"].ToString() + "' class='img-fluid rounded-3' >";
            str += "    </div>";
            str += "    <div class='col-md-3 col-lg-3 col-xl-3'>";
            str += "        <h6 class='text-muted'>" + dt1.Rows[0]["Pname"].ToString() + "</h6>";
            str += "        <h6 class='text-black mb-0'>" + dt1.Rows[0]["Description"].ToString() + "</h6>";
            str += "    </div>";
            str += "    <div class='col-md-3 col-lg-3 col-xl-2 d-flex'>";
            str += "        <span>" + dt.Rows[i]["qty"].ToString() + "</span>";
            str += "    </div>";
            str += "    <div class='col-md-3 col-lg-2 col-xl-2 offset-lg-1'>";
            str += "         <h6 class='mb-0'>€ " + dt.Rows[i]["Amount"].ToString() + "</h6>";
            str += "    </div>";
            str += "    <div class='col-md-1 col-lg-1 col-xl-1 text-end'>";
            str += "         <a href='View_cart.aspx?t1=" + dt.Rows[i]["Id"].ToString() + "'><img src='Project_images/cross.png' style='width: 100%;  height= 100px; object-fit: cover;'></a>";
            str += "    </div>";
            str += " </div>";
        }

        Session["total"] = total;
        str += "<h1>Total = " + total + "<br><a href='payment_options.aspx?t1=" + total + "'>Checkout</a>";
        Literal4.Text = total.ToString();
        Literal2.Text = str;
    }
}
