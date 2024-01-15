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
        str += "<table width=70% align=center border =1>";
        int total = 0;
        str += "<tr>";
        str += "<Td colspan=5>";
        str += "<h1 align=center> The Perfume Store </h1>";
        str += "Kalawad Road, Rajkot 360001";
        str += "<br> <i>Email : perfumestore@gmail.com</i>";
        str += "<br> Contact : +91 281 2121212";
        str += "<Br><h1 align=center> BILL</b>";
        str += "<tr><th>Srno<th>Product name <th>Qty <th>Price <th> Amount</tr>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<tr valign=top><Td width=10%>" + (i + 1);
            DataTable dt1 = db.getdata("select * from products where Id = " + dt.Rows[i]["Prodid"].ToString() + "");
            str += "<td width=70%>" + dt1.Rows[0]["Pname"].ToString();
            str += "<td width=10%>" + dt.Rows[i]["qty"].ToString();
            str += "<td width=10%>" + dt1.Rows[0]["price"].ToString();

            str += "<td width=10%>" + dt.Rows[i]["Amount"].ToString();
            total += int.Parse(dt.Rows[i]["Amount"].ToString());
            str += "</tr>";
        }
        str += "<Tr><Td colspan= 4 align=right> Total Bill : - <Td>" + total + "</tr>";
        float gst = total * 18 / 100;
        str += "<tr><Td colspan=4 align=right> GST @ 18% :- <td> " + gst + "</tr>";
        str += "<Tr><Td colspan=4 align=right> Net Bill = :- <td> " + (total + gst) + "</tr>";
        str += "<Tr><td colspan=5>";
        str += "1. Sold Goods will not be accepted.";
        str += "<Br>2. No Refund Will Be Given.";
        str += "<br> 3. All desputes are subject to Rajkot Jurisdiction";
        str += "<p align=right> This is computer generared bill it does not require signature.";
        str += "</table>";
        Literal2.Text = str;
        db.setdata("delete from Cart where Custid = '" + Session["uid"].ToString() + "'");

    }
}
