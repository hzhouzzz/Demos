<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Leieve_Tea_Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/main.css" rel="stylesheet" />

    <header class="page-marque">
        <%--<div>
            <img src="img/LT_LOGO.png" alt="">
        </div>--%>      
        <div>
            <h1>L<span class="wave">O</span>VE TEA</h1>
            <img class="straw-art" src="img/svg/straw.svg" alt="" />
        </div>

        <div>
            <a class="banner-button" runat="server" href="~/Pages/OrderSys/Order.aspx">ORDER NOW</a>
        </div>    
    </header> 
    
    <main>

    </main> 

</asp:Content>
