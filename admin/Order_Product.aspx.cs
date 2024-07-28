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
        String str = "<div class='container'>";
        str += "<table class='table table-bordered table-striped mt-4'>";
        str += "<thead class='table-dark'><tr><th>Srno</th><th>Customer name</th><th>Product Name</th><th>Qty</th><th>Price</th><th>Amount</th><th>Image</th><th>Action</th></tr></thead>";
        str += "<tbody>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DataTable dt1 = db.getdata("Select * from Registration where Id = '" + dt.Rows[i]["custid"].ToString() + "'");

            if (dt1.Rows.Count > 0)
            {
                String customer = dt1.Rows[0]["First_name"].ToString() + " " + dt1.Rows[0]["Last_name"].ToString();

                DataTable dt2 = db.getdata("Select * from Products where Id = " + dt.Rows[i]["pid"].ToString());

                if (dt2.Rows.Count > 0)
                {
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
                else
                {
                    // Handle the case where no rows are returned for Products
                }
            }
            else
            {
                // Handle the case where no rows are returned for Registration
            }
        }

        str += "</table>";
        Literal1.Text = str;
    }
}