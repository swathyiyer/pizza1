<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlinePizza.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 497px;
        height: 177px;
        margin-top:200px;
        margin-left: 200px;
        margin-right: auto; 
        margin-bottom: auto;
    }
     
</style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

   
        
    <div class="auto-style1" >
        <div class="col-md-10">
            <img src="Models/5.jpg" /> 
         </div>
         <div class="col-md-2">
            <h4> Login</h4>
<br />
<br />
            <asp:Table ID="Table1" runat="server" Width="356px" CssClass="bt" Height="150px" >

             <asp:TableRow Height="70px">
             
                 <asp:TableCell>
                 <label>Username</label>
                 </asp:TableCell>

                 <asp:TableCell>
                 <asp:TextBox ID="nametxt" runat="server" CssClass="form-control" ></asp:TextBox>
                 </asp:TableCell>

                 <asp:TableCell>
                 <asp:RequiredFieldValidator runat="server" ErrorMessage=" Required!!" ControlToValidate="nametxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                 </asp:TableCell>  
                    
            </asp:TableRow>

            <asp:TableRow Height="70px">
            
                 <asp:TableCell>
                 <label>Password</label>
                 </asp:TableCell>
                
                 <asp:TableCell> 
                 <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>
                 </asp:TableCell>
                
                 <asp:TableCell>
                 <asp:RequiredFieldValidator runat="server" ErrorMessage=" Required!!" ControlToValidate="passwordtxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                 </asp:TableCell>  
            
            </asp:TableRow >
                 
            <asp:TableRow Height="70px">
            
                 <asp:TableCell>
                 <asp:Button ID="loginbtb" runat="server" Text=" Log In " OnClick="loginbtb_Click" CssClass="btn btn-default" BackColor="#6E6A6A"  BorderColor="#585656" ForeColor="White" Font-Names="DejaVu Sans" />
                 </asp:TableCell>
                
                 <asp:TableCell>
                 <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" NavigateUrl="~/Register/Register.aspx" ForeColor="Red">Create an Account</asp:HyperLink>
                 </asp:TableCell>
            
            </asp:TableRow>

            <asp:TableRow Height="70px">
            
                 <asp:TableCell>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                 <asp:Label ID="alertlbl" runat="server" ForeColor="Red"></asp:Label>
                 </asp:TableCell>
              
            </asp:TableRow >
       
            </asp:Table>

      
      
        <br />

    </div>
     
  </div>    
  
</asp:Content>
