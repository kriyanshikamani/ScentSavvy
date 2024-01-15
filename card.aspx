<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="card.aspx.cs" Inherits="card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 align="center"><b><u>Card Payment</u></b></h1> <br />
<table style="width: 80%; border: 1px solid #c0c0c0">
    <tr>
        <td>Enter Card No</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" required="required" ></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Bank NAme</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" required="required" ></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter CVV Code</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Expiry Date On the Card</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Amount</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"  required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

