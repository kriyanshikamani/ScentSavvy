using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        DataTable dt = db.getdata("select * from Categories");
        String str = "";

        // Start the flex container
        str += "<div class='d-flex flex-wrap justify-between' id='cardContainer'>";

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<div class='m-4'><div class='card border border-secondary' style='width:150px; height: 250px;'>";
            str += "<a href=showproducts.aspx?t1=" + dt.Rows[i]["id"].ToString() + ">";
            str += "<img class='card-img-top p-2' src='Project_images/" + dt.Rows[i]["Image"].ToString() + "' style='width: 100%; height:200px; object-fit: cover;'>";
            str += "<div class='card-body'><h3 class='card-title'>" + dt.Rows[i]["Catname"].ToString() + "</h3></div></a></div></div>";
        }

        // End the flex container
        str += "</div>";

        Literal2.Text = str;
    }


}