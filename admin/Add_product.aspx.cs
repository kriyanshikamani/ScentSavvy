using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_Add_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Attributes.Add("type", "date");
        Dbo db = new Dbo();
        DataTable dt = db.getdata("select * from Categories");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList1.Items.Add(dt.Rows[i]["Catname"].ToString());
            DropDownList1.Items[i].Value = dt.Rows[i]["Id"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        db.setdata("insert into products values('" + DropDownList1.SelectedValue.ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+ FileUpload1.FileName+"')");
        FileUpload1.SaveAs(Server.MapPath("~/Project_images/"+FileUpload1.FileName));
        Response.Redirect("products.aspx");

    }
}