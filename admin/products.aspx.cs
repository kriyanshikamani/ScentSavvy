using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if (Request["delid"] != null)
            db.setdata("delete from Products where Id = " + Request["delid"]);
        DataTable dt = db.getdata("Select * from Products");
        String str = "<table border =1 width = 100%>";
        str += "<Tr><Td>srno<td>category<td>productname<td>company<td>description<td>price<td>image<td>action<td>action</tr>";
        for(int i = 0; i <dt.Rows.Count;i++)
        {
            str += "<Tr><Td>" + (i + 1);
            DataTable dt1 = db.getdata("Select * from Categories where Id=" + dt.Rows[i]["Catid"].ToString());
            str += "<td>" + dt1.Rows[0]["Catname"].ToString(); 
                
            str += "<td>" + dt.Rows[i]["Pname"].ToString();
            str += "<Td>" + dt.Rows[i]["Company"].ToString();
            str += "<Td>" + dt.Rows[i]["Description"].ToString();
            str += "<Td>" + dt.Rows[i]["Price"].ToString();
           // str += "<Td>" + dt.Rows[i]["Catid"].ToString();

            str += "<TD><img src ='../Project_images/" + dt.Rows[i]["Image"].ToString() + "' height = 100 width = 100>";
            str += "<td><a href=products.aspx?delid=" + dt.Rows[i]["Id"].ToString()+">Delete</a>";
            str += "<Td><a href=edit_product.aspx?pid=" + dt.Rows[i]["Id"].ToString() + ">Edit</a>";
            str += "</tr>";

        }
        str += "</table>";
        Literal1.Text = str;
    }
}