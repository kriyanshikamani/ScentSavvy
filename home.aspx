<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    body {
        background: linear-gradient(to right, #d9eaf3, #f8f9fa);
        margin: 0;
        font-family: 'Arial', sans-serif;
    }

    .container-fluid {
        padding: 0;
    }

    .image-section {
        position: relative;
        height: 100vh;
        overflow: hidden;
    }

    .image-section img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .tagline-section {
        position: relative;
        background-color: rgba(52, 58, 64, 0.7); /* Semi-transparent dark background color for the tagline section */
        color: #fff; /* Light text color for the tagline */
        padding: 3rem;
        text-align: center;
        border-radius: 20px; /* Adjust the border-radius for the rounded corners */
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    .tagline-section h2 {
        font-size: 3em;
        font-weight: bold;
        margin-bottom: 20px;
        text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.7); /* Bright text shadow effect */
    }

    .tagline-section p {
        font-size: 1.5em;
        margin-bottom: 30px;
    }
</style>

<div class="container-fluid image-section">
    <img src="Project_images/home.jpg" alt="Perfume Image">
</div>

<!-- Tagline Section -->
<div class="container-fluid tagline-section">
    <h2>Elevate every moment with <span style="color: #ffc107;">ScentSavvy</span></h2>
    <p>Discover the latest perfumes at Perfume Store and find the perfect scent for every occasion.</p>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

        
</asp:Content>

