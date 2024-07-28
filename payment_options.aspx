<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment_options.aspx.cs" Inherits="payment_options" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    .btn-light-brown {
        background-color: #97704F; /* Light brown color */
        color: #fff;
        border: none;
    }

    .btn-light-brown:hover {
        background-color: #714426; /* Darker brown on hover */
    }

    .btn-light-brown-shade {
        background-color: #97704F; /* Light brown shade color */
        color: #fff;
        border: none;
    }

    .btn-light-brown-shade:hover {
        background-color: #714426; /* Darker brown shade on hover */
    }
</style>


       <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h2 class="mb-4">Select Your Preferred Payment Method</h2>
                <div class="card mb-4 perfume-card">
                    <div class="card-body">
                        <h5 class="card-title">Cash on Delivery</h5>
                        <p class="card-text">Pay with cash when your perfume is delivered to your doorstep.</p>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-light-brown btn-lg btn-block" Text="Select Cash on Delivery" OnClick="Button1_Click" />
                    </div>
                </div>
                <div class="card perfume-card">
                    <div class="card-body">
                        <h5 class="card-title">Card Payment</h5>
                        <p class="card-text">Securely pay with your credit or debit card.</p>
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-light-brown-shade btn-lg btn-block" Text="Select Card Payment" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
