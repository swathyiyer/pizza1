<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Empty.aspx.cs" Inherits="OnlinePizza.Empty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
   <style>
        .tab{
            margin-top: 150px; 
            
            /*width:600px;
            height:200px;
            border:2px solid black;
            color:white;*/
           
            text-align:center;
        }
    </style>
    <div class="tab" > 
        
        <img src="Models/Empty%20Cart.png" />
            <h3 style="padding-top:40px;" >Your cart is empty!!!</h3>
        <h5>Looks like you have no items in your shopping cart</h5>
    </div>
</asp:Content>
