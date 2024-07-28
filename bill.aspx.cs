using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");

        string str = "";
        Dbo db = new Dbo();
        DataTable dt = db.getdata("select * from Cart where Custid = " + Session["uid"] + "");

        // Start building the bill HTML
        str += "<table style='width: 70%; margin: 0 auto; border-collapse: collapse;'>";
        int total = 0;

        // Header section
        str += "<tr>";
        str += "<td colspan='5' style='text-align: center; padding: 20px; background-color: #f3f3f3;'>";
        str += "<h1 style='margin: 0; font-size: 24px;'>The Perfume Store</h1>";
        str += "<p style='margin: 5px 0;'>Kalawad Road, Rajkot 360001<br>Email: perfumestore@gmail.com<br>Contact: +91 281 2121212</p>";
        str += "<h2 style='margin: 10px 0; font-size: 20px;'>BILL</h2>";
        str += "</td>";
        str += "</tr>";

        // Table header
        str += "<tr>";
        str += "<th style='padding: 10px; border: 1px solid #ddd;'>Srno</th><th style='padding: 10px; border: 1px solid #ddd;'>Product name</th><th style='padding: 10px; border: 1px solid #ddd;'>Qty</th><th style='padding: 10px; border: 1px solid #ddd;'>Price</th><th style='padding: 10px; border: 1px solid #ddd;'>Amount</th>";
        str += "</tr>";

        // Loop through cart items
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<tr>";
            str += "<td style='padding: 10px; border: 1px solid #ddd;'>" + (i + 1) + "</td>";
            DataTable dt1 = db.getdata("select * from products where Id = " + dt.Rows[i]["Prodid"].ToString() + "");
            str += "<td style='padding: 10px; border: 1px solid #ddd;'>" + dt1.Rows[0]["Pname"].ToString() + "</td>";
            str += "<td style='padding: 10px; border: 1px solid #ddd;'>" + dt.Rows[i]["qty"].ToString() + "</td>";
            str += "<td style='padding: 10px; border: 1px solid #ddd;'>" + dt1.Rows[0]["price"].ToString() + "</td>";
            str += "<td style='padding: 10px; border: 1px solid #ddd;'>" + dt.Rows[i]["Amount"].ToString() + "</td>";
            str += "</tr>";
            total += int.Parse(dt.Rows[i]["Amount"].ToString());
        }

        // Total and GST section
        float gst = total * 18 / 100;
        str += "<tr><td colspan='4' align='right' style='padding: 10px; border: 1px solid #ddd;'>Total Bill:</td><td style='padding: 10px; border: 1px solid #ddd;'>" + total + "</td></tr>";
        str += "<tr><td colspan='4' align='right' style='padding: 10px; border: 1px solid #ddd;'>GST @ 18%:</td><td style='padding: 10px; border: 1px solid #ddd;'>" + gst + "</td></tr>";
        str += "<tr><td colspan='4' align='right' style='padding: 10px; border: 1px solid #ddd;'>Net Bill:</td><td style='padding: 10px; border: 1px solid #ddd;'>" + (total + gst) + "</td></tr>";

        // Footer section
        str += "<tr><td colspan='5' style='padding: 20px; background-color: #f3f3f3; text-align: center;'>";
        str += "<p style='margin: 5px 0;'>1. Sold Goods will not be accepted.<br>2. No Refund Will Be Given.<br>3. All disputes are subject to Rajkot Jurisdiction</p>";
        str += "<p style='margin: 5px 0;'>This is a computer generated bill, it does not require a signature.</p>";
        str += "</td></tr>";

        // End of table
        str += "</table>";

        Literal2.Text = str;

        // Delete items from cart after generating bill
        db.setdata("delete from Cart where Custid = '" + Session["uid"].ToString() + "'");
    }
}