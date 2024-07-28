<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-5">
        <h1 class="text-center"><b><u>Payment</u></b></h1>
        <br />
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form>
                    <div class="mb-3 row">
                        <label for="TextBox1" class="col-sm-4 col-form-label">Enter Alternate Contact Person Name</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="required" placeholder="John Doe"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="TextBox2" class="col-sm-4 col-form-label">Enter Delivery Address</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required="required" placeholder="123 Main Street"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="TextBox3" class="col-sm-4 col-form-label">Enter Alternate Phone No</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" required="required" placeholder="555-555-5555"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="TextBox4" class="col-sm-4 col-form-label">Amount</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" CssClass="form-control" placeholder="$0.00"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                       <div class="col-sm-8 offset-sm-4">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Style="background-color: #8B4513; color: #fff; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; transition: background-color 0.3s ease;" />
</div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

