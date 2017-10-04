<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Final.aspx.cs" Inherits="OnlinePizza.Final" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
   <br />
   
        <style>
        .tab{
            margin-top: 150px; 
            text-align:center;
        }
    .auto-style1 {
        width: 571px;
        height: 371px;
    }
    </style>
    <div class="tab" > 
        <img src="Models/success.jpg" class="auto-style1" />
        
            <h3 style="padding-top:40px;" >Your order was successfull!!!</h3>
      
    </div>
      
</asp:Content>
