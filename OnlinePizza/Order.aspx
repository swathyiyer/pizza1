<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OnlinePizza.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 262px;
        }
        .auto-style2 {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:400px; margin:auto; margin-top:100px;">
    
        <asp:Table ID="Table1" runat="server" Width="380px" Height="250px" >
            <asp:TableRow>
                <asp:TableCell>
                    <label>Pizza Name</label>
                </asp:TableCell>
                <asp:TableCell>
                 <asp:DropDownList ID="DropDownList1" CssClass="form-control" OnSelectedIndexChanged="id1_SelectedIndexChanged" AutoPostBack="True"
runat="server"></asp:DropDownList>
                </asp:TableCell>
                    
            </asp:TableRow>


            
             <asp:TableRow>
                <asp:TableCell>
                    <label>Quantity</label>
                </asp:TableCell>
                <asp:TableCell>
                   
                    <asp:TextBox ID="quantitytxt" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <label>Amount</label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" CssClass="form-control" Text=""></asp:Label>
              
                </asp:TableCell>
            </asp:TableRow>
            

          <asp:TableRow>
                <asp:TableCell>
                    <label>Description</label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" CssClass="form-control" Text="" Width="300px" Height="50px"></asp:Label>
              
                </asp:TableCell>
            </asp:TableRow>
            
     <asp:TableRow>
                <asp:TableCell>
             
                </asp:TableCell>
                <asp:TableCell>
                  <asp:Button ID="Button1" runat="server" Text="Add To Cart" OnClick="addtochatrbtn_Click" CssClass="btn btn-default" BackColor="#6E6A6A"  BorderColor="#585656" ForeColor="White" Font-Names="DejaVu Sans" />
              
                </asp:TableCell>
            </asp:TableRow>
              <asp:TableRow >
            <asp:TableCell>
           
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label ID="alertlbl" runat="server" ForeColor="Red"></asp:Label>
                    
                </asp:TableCell>
              
            </asp:TableRow >
         
           
       
        </asp:Table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        
    </div>
 
</asp:Content>
