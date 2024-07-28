<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_cart.aspx.cs" Inherits="View_cart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section class="h-100 h-custom" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12">
        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
          <div class="card-body p-0">
            <div class="row g-0">
              <div class="col-lg-8">
                <div class="p-5">
                  <div class="d-flex justify-content-between align-items-center mb-5">
                    <h3> <a href=categories.aspx><img src='Project_images/back.webp' class="mr-2" width=20 height=20>Continue Shopping</a></h3>
                    <h6 class="mb-0 text-muted"><asp:Literal ID="Literal1" runat="server"></asp:Literal> Items</h6>
                  </div>
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </div>
              </div>






              <div class="col-lg-4 bg-grey">
                <div class="p-5">
                  <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                  <hr class="my-4">

                  <div class="d-flex justify-content-between mb-4">
                    <h5 class="text-uppercase">items <asp:Literal ID="Literal3" runat="server"></asp:Literal></h5>
                    <h5><asp:Literal ID="Literal4" runat="server"></asp:Literal></h5>
                  </div>

                  

                 
                  <hr class="my-4">

                  <div class="d-flex justify-content-between mb-5">
                    <h5 class="text-uppercase">Total price</h5>
                    <h5>Rs. <asp:Literal ID="Literal5" runat="server"></asp:Literal></h5>
                  </div>

                

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    
</asp:Content>

