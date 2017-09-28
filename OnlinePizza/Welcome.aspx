<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="OnlinePizza.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 116px;
            border:2px solid black;
            width:350px;
        }
        .auto-style2 {
           margin-left:100px;
            height: 300px;
            width: 700px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
<br />
    <br />
   <h3> WELCOME <asp:Label ID="nametxt" runat="server" Text="Label"></asp:Label>!!!</h3>
    <br /><br />

       <div  class="auto-style1">
           &nbsp;&nbsp;
           <asp:Table ID="Table1" runat="server" Width="356px" CssClass="bt" Height="125px">

               <asp:TableRow>
            <asp:TableCell>
               <h4> <asp:Label ID="Label3" runat="server" Text="Phone number"></asp:Label></h4>
            </asp:TableCell>
            <asp:TableCell>
                 <h4><asp:Label ID="Label4" runat="server" Text=""></asp:Label></h4>
            </asp:TableCell>
        </asp:TableRow>
         

               <asp:TableRow>
            <asp:TableCell>
               <h4> <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label></h4>
            </asp:TableCell>
            <asp:TableCell>
                 <h4><asp:Label ID="Label6" runat="server" Text=""></asp:Label></h4>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    &nbsp;</div>
   
    <div >
 <asp:HyperLink runat="server" NavigateUrl="Order.aspx"><img src="http://www.newvaadvice.com/wp-content/uploads/2015/01/Order-Now-Orange.png" class="auto-style2" /></asp:HyperLink>
    </div>
</asp:Content>
