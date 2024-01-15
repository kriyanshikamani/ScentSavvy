<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Payment Details</h2><br />
    <h3>Cash On Delivery</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action"  />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Custid" HeaderText="Custid" SortExpression="Custid" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Delivery_add" HeaderText="Delivery_add" SortExpression="Delivery_add" />
            <asp:BoundField DataField="Contact_person" HeaderText="Contact_person" SortExpression="Contact_person" />
            <asp:BoundField DataField="Alt_phone" HeaderText="Alt_phone" SortExpression="Alt_phone" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Payment] ([Custid], [Amount], [Delivery_add], [Contact_person], [Alt_phone]) VALUES (@Custid, @Amount, @Delivery_add, @Contact_person, @Alt_phone)" SelectCommand="SELECT * FROM [Payment]" UpdateCommand="UPDATE [Payment] SET [Custid] = @Custid, [Amount] = @Amount, [Delivery_add] = @Delivery_add, [Contact_person] = @Contact_person, [Alt_phone] = @Alt_phone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Custid" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Delivery_add" Type="String" />
            <asp:Parameter Name="Contact_person" Type="String" />
            <asp:Parameter Name="Alt_phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Custid" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Delivery_add" Type="String" />
            <asp:Parameter Name="Contact_person" Type="String" />
            <asp:Parameter Name="Alt_phone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h3>Card Payment</h3>

    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="custid" HeaderText="custid" SortExpression="custid" />
            <asp:BoundField DataField="cardno" HeaderText="cardno" SortExpression="cardno" />
            <asp:BoundField DataField="bankname" HeaderText="bankname" SortExpression="bankname" />
            <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
            <asp:BoundField DataField="expiry" HeaderText="expiry" SortExpression="expiry" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [card] WHERE [Id] = @Id" InsertCommand="INSERT INTO [card] ([custid], [cardno], [bankname], [cvv], [expiry], [amount]) VALUES (@custid, @cardno, @bankname, @cvv, @expiry, @amount)" SelectCommand="SELECT * FROM [card]" UpdateCommand="UPDATE [card] SET [custid] = @custid, [cardno] = @cardno, [bankname] = @bankname, [cvv] = @cvv, [expiry] = @expiry, [amount] = @amount WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="custid" Type="Int32" />
            <asp:Parameter Name="cardno" Type="String" />
            <asp:Parameter Name="bankname" Type="String" />
            <asp:Parameter Name="cvv" Type="String" />
            <asp:Parameter Name="expiry" Type="String" />
            <asp:Parameter Name="amount" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="custid" Type="Int32" />
            <asp:Parameter Name="cardno" Type="String" />
            <asp:Parameter Name="bankname" Type="String" />
            <asp:Parameter Name="cvv" Type="String" />
            <asp:Parameter Name="expiry" Type="String" />
            <asp:Parameter Name="amount" Type="Double" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

