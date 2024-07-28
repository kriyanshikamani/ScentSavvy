<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative text-center mb-5"><b><u>Contact Us For Any Query</u></b></h1>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div class="contact-form bg-light rounded p-5">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="form-row">
                                <div class="col-sm-6 control-group">
                                    <asp:TextBox runat="server" class="form-control p-4" id="textbox1" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name" ></asp:TextBox> 
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="col-sm-6 control-group">
                                    <asp:TextBox  runat="server"  class="form-control p-4" id="textbox2" placeholder="Message" required="required"   data-validation-required-message="Please enter your email" > </asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="control-group">
                                <asp:TextBox runat="server" class="form-control p-4" id="textbox3" placeholder="Priority" required="required" data-validation-required-message="Please enter a subject" > </asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <asp:TextBox runat="server" class="form-control p-4" rows="6" id="textbox4" placeholder="Number" required="required" data-validation-required-message="Please enter your message"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>

                             
                            <div>
                                <asp:Button runat="server" class="btn btn-primary btn-block py-3 px-5" type="submit" id="button1" Text="Send Message" OnClick="button1_Click1"></asp:Button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

</asp:Content>

