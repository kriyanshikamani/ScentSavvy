<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  <div class="container mt-4">
        <h2>Add Category</h2>

        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="TextBox1" class="form-label">Enter Category Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="FileUpload1" class="form-label">Select Image</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="btn btn-primary" />
            </div>
        </div>
    </div>
</asp:Content>

