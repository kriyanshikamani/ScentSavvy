<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="card.aspx.cs" Inherits="card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container mt-5">
        <h1 class="text-center"><b><u>Card Payment</u></b></h1>
        <br />
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form>
                    <div class="mb-3 row">
    <label for="TextBox1" class="col-sm-4 col-form-label">Enter Card No</label>
    <div class="col-sm-8">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="required" placeholder="1234 5678 9012 3456" oninput="maskBankNumber()" onkeypress="return isNumericKey(event)" maxlength="16"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ClientValidationFunction="validateCardNumber" ErrorMessage="Please enter a valid 16-digit card number"></asp:CustomValidator>
    </div>
</div>


                    <div class="mb-3 row">
                        <label for="TextBox2" class="col-sm-4 col-form-label">Enter Bank Name</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" required="required" placeholder="e.g., Bank of Perfumes"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="TextBox5" class="col-sm-4 col-form-label">Amount</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" required="required" placeholder="$0.00"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-8 offset-sm-4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Make Payment" CssClass="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<script>
    function maskBankNumber() {
        var textBox = document.getElementById('<%= TextBox1.ClientID %>');
        var bankNumber = textBox.value.replace(/\s/g, ''); // Remove spaces
        var maskedNumber = '';

        // If the length is less than or equal to 12, mask all digits except the last 4
        if (bankNumber.length <= 12) {
            maskedNumber = bankNumber.replace(/\d/g, 'X'); // Replace all digits with 'X'
        } else {
            // If the length is greater than 12, keep the first 12 digits and mask the rest
            var firstPart = bankNumber.substring(0, 12);
            var lastPart = bankNumber.substring(12);
            firstPart = firstPart.replace(/(\d{4})/g, '$1 '); // Add space every 4 digits
            maskedNumber = firstPart + lastPart;
        }

        // Update the textbox value
        textBox.value = maskedNumber;
    }



</script>







</asp:Content>