<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 align="center">
        <b><u>Login Form</u></b></h1>
    
    <div class="container w-25">
        <div class="form-outline mb-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            <label class="form-label" for="TextBox3">
                Email address</label>
        </div>
        <div class="form-outline mb-4">
            <asp:TextBox ID="TextBox2" runat="server" required="required" CssClass="form-control"
                TextMode="Password"></asp:TextBox>
            <label class="form-label" for="TextBox2">
                Password</label>
        </div>
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
            <div class="col">
                <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-primary btn-block mb-4"/>
            </div>
        <!-- Submit button -->
        <div class="col">
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-block mb-4" OnClick="Button2_Click" Text="Login" />
        </div></div>

        <!-- Register buttons -->
        <div class="text-center">
            <p>
                Not a member? <a href="register.aspx">Register</a></p>
            <p>
                or sign up with:</p>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
