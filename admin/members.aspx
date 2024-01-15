<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="members.aspx.cs" Inherits="admin_members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
        <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
        <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
        <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Membership] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Membership] ([Username], [Age], [Height], [Weight], [E_mail], [Contact_no]) VALUES (@Username, @Age, @Height, @Weight, @E_mail, @Contact_no)" SelectCommand="SELECT * FROM [Membership]" UpdateCommand="UPDATE [Membership] SET [Username] = @Username, [Age] = @Age, [Height] = @Height, [Weight] = @Weight, [E_mail] = @E_mail, [Contact_no] = @Contact_no WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Username" Type="String" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="Height" Type="Double" />
        <asp:Parameter Name="Weight" Type="Double" />
        <asp:Parameter Name="E_mail" Type="String" />
        <asp:Parameter Name="Contact_no" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Username" Type="String" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="Height" Type="Double" />
        <asp:Parameter Name="Weight" Type="Double" />
        <asp:Parameter Name="E_mail" Type="String" />
        <asp:Parameter Name="Contact_no" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

