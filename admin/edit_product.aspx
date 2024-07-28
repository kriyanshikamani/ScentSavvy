<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="edit_product.aspx.cs" Inherits="admin_edit_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container mt-5">
      <h2>Edit Product</h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                       
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="DropDownList1" class="form-label">Select Category</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="mb-3">
                            <label for="TextBox1" class="form-label">Enter Product Name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="TextBox2" class="form-label">Enter Company Name</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="TextBox3" class="form-label">Enter Description</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="TextBox4" class="form-label">Enter Price</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="FileUpload1" class="form-label">Select Image</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

