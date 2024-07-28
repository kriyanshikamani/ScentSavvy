using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class showproducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string str = "";
        Dbo db = new Dbo();

        if (Request.QueryString["t1"] != null)
        {
            string cid = Request.QueryString["t1"].ToString();
            dt = db.getdata("select * from products where Catid = " + cid + "");
        }
        else
        {
            dt = db.getdata("select * from products");
        }

        if (dt.Rows.Count > 0)
        {
            str += "<div class='d-flex flex-wrap justify-between' id='cardContainer'>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str += "<div class='col-md-3 mb-4'>";
                str += "<div class='card border border-secondary h-100'>";
                str += "<a href=show_product_details.aspx?t1=" + dt.Rows[i]["Id"].ToString() + ">";
                str += "<img class='card-img-top' src='Project_images/" + dt.Rows[i]["Image"].ToString() + "' style='height: 200px; object-fit: cover;'>";
                str += "<div class='card-body'>";
                str += "<p class='card-text text-truncate'>" + dt.Rows[i]["Pname"].ToString() +"</p>";
                str += "</div></a></div></div>";
            }

            // End the flex container
            str += "</div>";
        }
        else
        {
            str = "<div class='container text-center mt-5'>";
            str += "<h1>No Data Found</h1>";
            str += "<div class='alert alert-info' role='alert'>";
            str += "Sorry, there is no data available at the moment.";
            str += "</div></div>";
        }

        Literal2.Text = str;
    }
}

