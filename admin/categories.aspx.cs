using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if (Request["delid"] != null)
            db.setdata("delete from Categories where Id = " + Request["delid"]);
        DataTable dt = db.getdata("Select * from Categories");
        String str = "<table border =1 width = 100%>";
        str += "<Tr><Td>srno<td>category name<td>image<td>action<td>action</tr>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<Tr><Td>" + (i + 1);
            str += "<td>" + dt.Rows[i]["Catname"].ToString();
            str += "<TD><img src ='../Project_images/" + dt.Rows[i]["Image"].ToString() + "' height = 100 width = 100>";
            str += "<td><a href=categories.aspx?delid=" + dt.Rows[i]["Id"].ToString() + ">Delete</a>";
            str += "<Td><a href=edit_category.aspx?pid=" + dt.Rows[i]["Id"].ToString() + ">Edit</a>";
            str += "</tr>";

        }
        str += "</table>";
        Literal1.Text = str;

    }
}