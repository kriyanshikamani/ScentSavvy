<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="admin_products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Products Details</h2><br />

   <br />
     <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/admin/Add_product.aspx">Add New Product</asp:LinkButton>
     <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

