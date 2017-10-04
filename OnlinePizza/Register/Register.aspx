<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlinePizza.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.auto-style1 {
                width: 497px;
                height: 300px;
             }
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="margin-top:200px; margin-left: 200px; margin-right: auto; margin-bottom: auto;" class="auto-style1">
      
      <div class="col-md-10">
      <img src="../Models/5.jpg" />
      </div>
      
      <div class="col-md-2">
            <h4>Register</h4>
<br />
<br />
            <asp:Table ID="Table1" runat="server" Width="400px" CssClass="bt" Height="250px" >
            
            <asp:TableRow>
            
                    <asp:TableCell>
                    <label>Username</label>
                    </asp:TableCell>
                
                    <asp:TableCell>
                    <asp:TextBox ID="nametxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:TableCell>
                  
                    <asp:TableCell>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Required!!" ControlToValidate="nametxt" ID="r1" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </asp:TableCell>  
            
            </asp:TableRow>
            
            <asp:TableRow>
            
                    <asp:TableCell>
                    <label>Password</label>
                    </asp:TableCell>

                    <asp:TableCell>
                    <asp:TextBox ID="passwordtxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:TableCell>
                  
                    <asp:TableCell>
                    <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Required!!" ControlToValidate="passwordtxt" ID="RequiredFieldValidator2" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:TableCell>  
            
            </asp:TableRow>
           
            <asp:TableRow>
            
                    <asp:TableCell>
                    <label>Phoneno</label>
                    </asp:TableCell>
                
                    <asp:TableCell>
                    <asp:TextBox ID="phonotxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:TableCell>
                
                    <asp:TableCell>
                    <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Required!!" ControlToValidate="passwordtxt" ID="RequiredFieldValidator3" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:TableCell>  
            
            </asp:TableRow>
      
            <asp:TableRow>
            
                    <asp:TableCell>
                    <label>Address</label>
                    </asp:TableCell>
                
                    <asp:TableCell>
                    <asp:TextBox ID="addtext" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:TableCell>
             
                    <asp:TableCell>
                    <asp:RequiredFieldValidator runat="server"  CssClass="text-danger" ErrorMessage="Required!!" ControlToValidate="passwordtxt" ID="RequiredFieldValidator4" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:TableCell>  
            
            </asp:TableRow>
           
            <asp:TableRow >
                    
                    <asp:TableCell>
                    <asp:Button ID="loginbtb" runat="server" Text=" Register " OnClick="confirmbtb_Click" CssClass="btn btn-default" BackColor="#6E6A6A"  BorderColor="#585656" ForeColor="White" Font-Names="DejaVu Sans" />
                    </asp:TableCell>
            
            </asp:TableRow>
            
            <asp:TableRow>
                
                    <asp:TableCell>           
                    </asp:TableCell>
                    
                    <asp:TableCell>
                    <asp:Label ID="alertlbl" runat="server"></asp:Label> 
                    </asp:TableCell>
              
            </asp:TableRow >
       
            </asp:Table>
       
       </div>
       
    </div>
       
</asp:Content>
