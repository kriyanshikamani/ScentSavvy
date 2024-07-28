using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class show_product_details : System.Web.UI.Page
{
    static string pid;
    static int price;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Write("<script>window.location='login.aspx'</script>");

        DataTable dt = new DataTable();
        Dbo db = new Dbo();
        pid = Request.QueryString["t1"].ToString();
        dt = db.getdata("select * from Products where Id = " + pid + "");
        string str = "";
        str += "<div class='row'>";
        str += "<div class='col-md-4'>";
        str += "<img src='Project_images/" + dt.Rows[0]["Image"].ToString() + "' class='img-fluid' alt='Product Image' style='width: 100%;  object-fit: cover;'>";
        str += "</div>";
        str += "<div class='col-md-8'>";
        str += "<h2>" + dt.Rows[0]["Pname"].ToString() + "</h2>";
        str += "<p>Company: " + dt.Rows[0]["Company"].ToString() + "</p>";
        str += "<p>Price: RS." + dt.Rows[0]["Price"].ToString() + "</p>";
        str += "<p>Description: " + dt.Rows[0]["Description"].ToString() + "</p>";
        str += "</div>";
        str += "</div>";

        Literal2.Text = str;
        price = int.Parse(dt.Rows[0]["Price"].ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        int amt = price * int.Parse(TextBox1.Text);
        db.setdata("insert into Cart values('" + Session["uid"].ToString() + "','" + pid + "','" + TextBox1.Text + "','" + amt + "')");
        Response.Redirect("View_cart.aspx?t1=" + amt);
    }
}
