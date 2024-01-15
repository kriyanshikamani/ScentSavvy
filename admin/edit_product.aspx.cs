using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_edit_product : System.Web.UI.Page
{
    static string pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if(!Page.IsPostBack)
        {
            pid = Request["pid"];
            DataTable dt = db.getdata("select * from products where Id = " + pid);
            TextBox1.Text = dt.Rows[0]["Pname"].ToString();
            TextBox2.Text = dt.Rows[0]["Company"].ToString();
            TextBox3.Text = dt.Rows[0]["Description"].ToString();
            TextBox4.Text = dt.Rows[0]["Price"].ToString();
            DataTable dt1 = db.getdata("select * from Categories");
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                DropDownList1.Items.Add(dt1.Rows[i]["Catname"].ToString());
                DropDownList1.Items[i].Value = dt1.Rows[i]["Id"].ToString();
                if (dt1.Rows[i]["Id"].ToString()  == dt.Rows[0]["Catid"].ToString ())
                {
                    DropDownList1.SelectedIndex = i;
                }
               
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Dbo db = new Dbo();
        if (FileUpload1.FileName == "")
        {
            db.setdata("update products set Catid = '" + DropDownList1.SelectedValue.ToString() + "',Pname ='" + TextBox1.Text + "',Company = '" + TextBox2.Text + "' , Description = '" + TextBox3.Text + "' , Price = '" + TextBox4.Text + "' where Id = '" + pid + "'");
        }
        else
        {
            db.setdata("update products set Catid ='" + DropDownList1.SelectedValue.ToString() + "', Pname ='" + TextBox1.Text + "',Company = '" + TextBox2.Text + "' , Description = '" + TextBox3.Text + "' , Price = '" + TextBox4.Text + "',Image ='"+ FileUpload1.FileName+"'  where Id = '" + pid + "'");

            FileUpload1.SaveAs(Server.MapPath("~/Project_images/" + FileUpload1.FileName));
        }
            Response.Redirect("products.aspx");
    }
}