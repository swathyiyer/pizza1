<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="OnlinePizza.Confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:gridview runat="server" AutoGenerateColumns="False" id="GridView1" DataSourceID="SqlDataSource2" DataKeyNames="CartId"  >
        <Columns>
            
            <asp:BoundField DataField="CartIdId" HeaderText="CartID" SortExpression="CartId" visible="false"/>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Pizzaname" HeaderText="Pizzaname" SortExpression="Pizzaname" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            
           
            
            <asp:CommandField ShowDeleteButton="true" /> 
            
           
            
        </Columns>
        
</asp:gridview>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDbConnectionString3 %>" 
         DeleteCommand="delete FROM [Cart_Table] where ([CartId] = @CartId) "
         SelectCommand="SELECT [CartId],[Username], [Pizzaname], [Quantity], [Rate], [Amount] FROM [Cart_Table] WHERE ([Username] = @Username)" 
         >
         <SelectParameters>
             <asp:SessionParameter DefaultValue="" Name="Username" SessionField="name" Type="String" />
            
         </SelectParameters>
         <DeleteParameters>
              <asp:Parameter  Name="CartId"  Type="Int32" />
              
         </DeleteParameters>
</asp:SqlDataSource>
     <asp:Label ID="Label1" runat="server" Text="Label">total</asp:Label>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="confirmbtn" runat="server" Text="Confirm" />
    <br />
</asp:Content>
