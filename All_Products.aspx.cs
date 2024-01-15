using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class All_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        Dbo db = new Dbo();
      
            dt = db.getdata("select * from products");
        string str = "";
        str = "<table width=75% align=center>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (i % 3 == 0)
                str += "</tr><tr>";
            str += "<td><a href=show_product_details.aspx?t1=" + dt.Rows[i]["Id"].ToString() + "><img src = Project_images/" + dt.Rows[i]["Image"].ToString() + " height = 200 width = 200>";
            str += "<br>" + dt.Rows[i]["Pname"].ToString() + "</a>";
        }
        str += "</tr></table>";
        Literal2.Text = str;
        
}
}