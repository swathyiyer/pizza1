<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="OnlinePizza.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    welcome <asp:Label ID="nametxt" runat="server" Text="Label"></asp:Label>
    <asp:Table ID="Table1" runat="server">
   
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
    </asp:Content>
