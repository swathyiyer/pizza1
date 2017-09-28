<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Empty.aspx.cs" Inherits="OnlinePizza.Empty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <style>
        .tab{
            margin-top: 200px; 
            text-align: center;
            width:600px;
            height:200px;
            border:2px solid black;
            background-image:url("http://gen4congress.com/wp-content/uploads/2017/08/vibrant-dark-wood-floor-pattern-8-popular-dark-wood-floor-pattern-vertical-wooden.jpg");
            color:white;
            margin-left:250px;
            text-align:center;
        }
    </style>
    <div class="tab" > 
            <h3 style="padding-top:40px;" >Your cart is empty!!!</h3>
    </div>
</asp:Content>
