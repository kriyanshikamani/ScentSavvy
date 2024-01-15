using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_Order_Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if (Request["delid"] != null)
            db.setdata("Delete from orders where Id = " + Request["delid"]);
        DataTable dt = db.getdata("Select * from orders");
        String str = "<table border =1 width = 100%>";
        str += "<tr><Td>Srno <Td>Customer name <Td> Product Name <td>Qty <Td>Price <Td> Amount <td> Image <Td> Action </tr>"; 
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DataTable dt1 = db.getdata("Select * from Registration where Id = '" + dt.Rows[i]["custid"].ToString() + "'");
            String customer = dt1.Rows[0]["First_name"].ToString() + " " + dt1.Rows[0]["Last_name"].ToString();
            DataTable dt2 = db.getdata("Select * from Products where Id = " + dt.Rows[i]["pid"].ToString() + "");
            String pname = dt2.Rows[0]["Pname"].ToString();
            str += "<Tr><Td>" + (i + 1);
            str += "<td>" + customer;
            str += "<Td>" + pname;
            str += "<Td>" + dt.Rows[i]["qty"].ToString();
            str += "<Td>" + dt2.Rows[0]["Price"].ToString();
            str += "<Td>" + dt.Rows[i]["amt"].ToString();
            str += "<TD><img src ='../Project_images/" + dt2.Rows[0]["Image"].ToString() + "' height = 100 width = 100>";
            str += "<Td><a href=Order_Product.aspx?delid=" + dt.Rows[i]["Id"].ToString() + ">DELETE</a>";
            str += "</tr>";

        }
        str += "</table>";
        Literal1.Text = str;
    }
}