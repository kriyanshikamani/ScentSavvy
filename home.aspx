<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="slides" class="cover-slides w-75 m-auto">
        <ul class="slides-container">
            <li class="text-center">
                <img src="images/slider-02.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20">
                                <strong>Welcome To
                                    <br>
                                    Perfume Store</strong></h1>
                            <p class="m-b-40">
                                Here you can find the latest Perfumes.</p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/slider-03.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20">
                                <strong>Welcome To
                                    <br>
                                    Perfume Store</strong></h1>
                            <p class="m-b-40">
                                We are providing Prefumes for all the age group.</p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/slider-01.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20">
                                <strong>Welcome To
                                    <br>
                                    Perfume Store</strong></h1>
                            <p class="m-b-40">
                                We are providing from Denim, Ajmal etc.</p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
</asp:Content>

