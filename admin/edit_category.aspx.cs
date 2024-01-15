using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_edit_category : System.Web.UI.Page
{
    static string pid;

    protected void Page_Load(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if (!Page.IsPostBack)
        {
            pid = Request["pid"];
            DataTable dt = db.getdata("select * from categories where Id = " + pid);
            TextBox1.Text = dt.Rows[0]["catname"].ToString();
          
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if (FileUpload1.FileName == "")
        {
            db.setdata("update categories set catname ='" + TextBox1.Text + "' where Id = '" + pid + "'");
        }
        else
        {
            db.setdata("update categories set catname ='" + TextBox1.Text + "',Image ='" + FileUpload1.FileName + "'  where Id = '" + pid + "'");

            FileUpload1.SaveAs(Server.MapPath("~/Project_images/" + FileUpload1.FileName));
        }
        Response.Redirect("categories.aspx");
    }
}

