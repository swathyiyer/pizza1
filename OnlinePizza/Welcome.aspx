<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="OnlinePizza.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
<br />
    <br />
    welcome <asp:Label ID="nametxt" runat="server" Text="Label"></asp:Label>
    
       <div style="margin-top:100px; margin-left: auto; margin-right: auto; margin-bottom: auto;" class="auto-style1">
           <asp:Table ID="Table1" runat="server" Width="356px" CssClass="bt" Height="125px">

               <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Phone number"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
         

               <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
    </asp:Content>
