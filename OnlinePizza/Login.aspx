<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlinePizza.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 497px;
        height: 177px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-top:100px; margin-left: auto; margin-right: auto; margin-bottom: auto;" class="auto-style1">
    
        <asp:Table ID="Table1" runat="server" Width="356px" CssClass="bt" Height="125px" >
            <asp:TableRow>
                <asp:TableCell>
                    <label>Username</label>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="nametxt" runat="server" CssClass="form-control" ></asp:TextBox>
                </asp:TableCell>
                    
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell>
                    <label>Password</label>
                </asp:TableCell>
                <asp:TableCell>
               
                    <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            

       
    
         
           
       
        </asp:Table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="alertlbl" runat="server" Text=""></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="loginbtb" runat="server" Text="Login" OnClick="loginbtb_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="registerbtn" runat="server" Text="Register" OnClick="registerbtn_Click" />
    </div>
        
</asp:Content>
