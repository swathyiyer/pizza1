<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="OnlinePizza.Welcome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
                    margin-top:200px;
                    margin-left: 200px;
                    margin-right: auto; 
                    margin-bottom: auto;
                 }
   .auto-style3 {
                    width: 317px;
                }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div  class="auto-style1">
        <div class="col-md-5">
        <img src="Models/feedback.png" class="auto-style3" />
        </div>
        
        <div class="col-md-5">
        <h4> Feedback</h4>
<br />
<br />

    
           <asp:Table ID="Table1" runat="server" Width="356px" CssClass="bt" Height="175px">

               <asp:TableRow>

                    <asp:TableCell>
                    <label>Phone Number</label>
                    </asp:TableCell>
            
                   <asp:TableCell>
                   <asp:TextBox ID="phone" runat="server" CssClass="form-control" ></asp:TextBox>
                   </asp:TableCell>
        
               </asp:TableRow>
      
               <asp:TableRow>
            
                   <asp:TableCell>
                   <label> Address</label>
                   </asp:TableCell>
            
                   <asp:TableCell>
                   <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                   </asp:TableCell>
        
               </asp:TableRow>
               
               <asp:TableRow>
            
                   <asp:TableCell>
                   <label> Comments</label>
                   </asp:TableCell>
            
                   <asp:TableCell>
                   <asp:TextBox ID="feedbacktxt" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                   </asp:TableCell>
        
               </asp:TableRow>

               <asp:TableRow>
            
                   <asp:TableCell>
                   <asp:Button ID="Button1" runat="server" Text="Send" OnClick="sendmail" CssClass="btn btn-default" BackColor="#6E6A6A"  BorderColor="#585656" ForeColor="White" Font-Names="DejaVu Sans" />
                   </asp:TableCell>
          
                   <asp:TableCell>
                   <asp:Label ID="alertlbl" runat="server" ForeColor="Red"></asp:Label>
                   </asp:TableCell>
        
              </asp:TableRow>
    
           </asp:Table>
   </div>
   
    <div >

 </div>

    </div>
</asp:Content>
