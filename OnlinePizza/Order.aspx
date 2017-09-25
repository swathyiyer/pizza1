<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OnlinePizza.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:400px; margin:auto; margin-top:100px;">
    
        <asp:Table ID="Table1" runat="server" Width="380px" >
            <asp:TableRow>
                <asp:TableCell>
                    <label>Pizza Name</label>
                </asp:TableCell>
                <asp:TableCell>
                 <asp:DropDownList ID="DropDownList1"  OnSelectedIndexChanged="id1_SelectedIndexChanged" AutoPostBack="True"
runat="server"></asp:DropDownList>
                </asp:TableCell>
                    
            </asp:TableRow>


            
             <asp:TableRow>
                <asp:TableCell>
                    <label>Quantity</label>
                </asp:TableCell>
                <asp:TableCell>
                   
                    <asp:TextBox ID="quantitytxt" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <label>Amount</label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              
                </asp:TableCell>
            </asp:TableRow>
            

          <asp:TableRow>
                <asp:TableCell>
                    <label>Description</label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
              
                </asp:TableCell>
            </asp:TableRow>
            
    
         
           
       
        </asp:Table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="alertlbl" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="addtochatrbtn" runat="server" Text="Add To Cart" OnClick="addtochatrbtn_Click"  />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="confirmbtb" runat="server" Text="Confirm" OnClick="confirmbtb_Click"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
    </div>
        
</asp:Content>
