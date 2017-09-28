<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserError.aspx.cs" Inherits="OnlinePizza.UserError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <h4>Unable To Proceed due to some error</h4> 
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register/Register.aspx">Click to register</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Login.aspx">Click to Login</asp:HyperLink>
</asp:Content>
