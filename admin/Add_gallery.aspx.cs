using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Add_gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        db.setdata("insert into Gallery values('" + TextBox1.Text + "','" + FileUpload1.FileName + "')");
        FileUpload1.SaveAs(Server.MapPath("~/Project_images/"+ FileUpload1.FileName));
        Response.Redirect("gallery.aspx");
    }
}