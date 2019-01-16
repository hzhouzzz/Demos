<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LTWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="<%=VirtualPathUtility.ToAbsolute("~/css/main.css")%>" rel="stylesheet" type="text/css"/>

    <header class="page-marque">
        <div>
            <img src="img/LT_LOGO.png" alt="">
        </div>
      
        <div>
            <a class="banner-button" href="#">ORDER NOW</a>
        </div>    
    </header>  

</asp:Content>
