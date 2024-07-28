<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        @media print {
            #navbar,
            #footer,
            #btnPrint {
                display: none !important;
            }

            .full-page {
                width: 100%;
                height: 100%;
                position: fixed;
                top: 0;
                left: 0;
            }

            .content-wrapper {
                width: 80%;
                margin: 0 auto;
                padding: 20px;
                border: 2px solid #000;
                border-radius: 10px;
                background-color: #fff;
                font-family: Arial, sans-serif;
                font-size: 16px;
            }

            .bill-details {
                margin-bottom: 0; /* Remove margin-bottom after bill content */
            }
        }

        body {
            margin: 0;
            padding: 0;
        }

        .download-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #714426;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            border: none;
            cursor: pointer;
        }

        .download-button:hover {
            background-color: #97704F;
        }
    </style>

    <div class="full-page">
        <div class="content-wrapper">
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            <asp:Button ID="btnPrint" runat="server" Text="Download Bill" OnClientClick="printBill(); return false;" CssClass="download-button" />
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener('keydown', function (event) {
            // Check if Ctrl+P is pressed
            if (event.ctrlKey && event.key === 'p') {
                // Hide the print button
                var btnPrint = document.getElementById('<%= btnPrint.ClientID %>');
                if (btnPrint) {
                    btnPrint.style.display = 'none';
                }
            }
        });

        function printBill() {
            // Hide the print button
            var btnPrint = document.getElementById('<%= btnPrint.ClientID %>');
            if (btnPrint) {
                btnPrint.style.display = 'none';
            }

            // Print the page
            window.print();
        }
    </script>
</asp:Content>
