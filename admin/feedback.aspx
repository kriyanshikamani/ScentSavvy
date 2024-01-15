<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="admin_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Contact Details</h2><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action"  />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
        <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
        <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
        <asp:BoundField DataField="Feedback" HeaderText="Message" SortExpression="Feedback" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Feedback] ([First_name], [Last_name], [Contact_no], [Feedback]) VALUES (@First_name, @Last_name, @Contact_no, @Feedback)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [First_name] = @First_name, [Last_name] = @Last_name, [Contact_no] = @Contact_no, [Feedback] = @Feedback WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="First_name" Type="String" />
        <asp:Parameter Name="Last_name" Type="String" />
        <asp:Parameter Name="Contact_no" Type="String" />
        <asp:Parameter Name="Feedback" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="First_name" Type="String" />
        <asp:Parameter Name="Last_name" Type="String" />
        <asp:Parameter Name="Contact_no" Type="String" />
        <asp:Parameter Name="Feedback" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

