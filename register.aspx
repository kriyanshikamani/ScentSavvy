
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center"><b><u>Registration</u></b></h1> <br />
    <table align="center" style="width: 50%">
    <tr>
        <td>Enter First Name</td>
        <td>
            <asp:TextBox class="form-control"  ID="TextBox1" runat="server" required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Last Name</td>
        <td>
            <asp:TextBox ID="TextBox2" class="form-control" runat="server"  required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 29px">Enter Contact No.</td>
        <td style="height: 29px">
            <asp:TextBox ID="TextBox3" class="form-control" runat="server"  required="required" ></asp:TextBox>
        </td>
        <td style="height: 29px"></td>
    </tr>
    <tr>
        <td>Enter Email Id</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TextBox4" runat="server" class="form-control" required="required" ></asp:TextBox>
        </td>
        <td>

    </tr>
    <tr>
        <td>Enter Username</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TextBox5" runat="server" class="form-control"  required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Enter Password</td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" TextMode="Password"  required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Confirm Password</td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="Password"  required="required"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><asp:Button class="send" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
           </td>
        <td style="margin-left: 120px">
             <asp:Button class="send" ID="Button2" runat="server" Text="Reset" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

