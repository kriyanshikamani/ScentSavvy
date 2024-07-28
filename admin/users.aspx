<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="admin_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-4">
        <h2>User Details</h2>
        <br />

        <div class="table-responsive">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
        <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
        <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
        <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Columns>
    <HeaderStyle BackColor="Black" ForeColor="White" />
</asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM [Registration] WHERE [Id] = @Id"
            InsertCommand="INSERT INTO [Registration] ([First_name], [Last_name], [Contact_No], [E_mail], [Username], [Password]) VALUES (@First_name, @Last_name, @Contact_No, @E_mail, @Username, @Password)"
            SelectCommand="SELECT * FROM [Registration]"
            UpdateCommand="UPDATE [Registration] SET [First_name] = @First_name, [Last_name] = @Last_name, [Contact_No] = @Contact_No, [E_mail] = @E_mail, [Username] = @Username, [Password] = @Password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="Last_name" Type="String" />
                <asp:Parameter Name="Contact_No" Type="String" />
                <asp:Parameter Name="E_mail" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="Last_name" Type="String" />
                <asp:Parameter Name="Contact_No" Type="String" />
                <asp:Parameter Name="E_mail" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

