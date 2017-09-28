<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="OnlinePizza.Confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/StyleSheet1.css" rel="stylesheet" />
    <br/>
    <br />
    &nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <div style="margin-top:80px; margin-left: 100px; margin-right: auto; margin-bottom: auto;" >

    
    <asp:gridview runat="server" AutoGenerateColumns="False" id="GridView1" DataSourceID="SqlDataSource2" DataKeyNames="CartId,State" Font-Size="Large" Width="1000px"  >
        <Columns>
            
            <asp:BoundField DataField="CartIdId" HeaderText="CartID"  visible="false"/>
            <asp:BoundField DataField="PizzaId" HeaderText="PizzaId"  Visible="false" />
            <asp:BoundField DataField="Username" HeaderText="Username" visible="false" />
            <asp:BoundField DataField="PizzaName" HeaderText="PizzaName" SortExpression="PizzaName" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
             <asp:BoundField DataField="PizzaPrice" HeaderText="PizzaPrice" />
             <asp:BoundField DataField="State" HeaderText="State" visible="false"/>
            <asp:BoundField DataField="Amount" HeaderText="Amount" />
            
           
            
            <asp:CommandField ShowDeleteButton="true"  /> 
            
           
            
        </Columns>
        
        <HeaderStyle BackColor="#6E6A6A" BorderColor="#585656" Height="10px" Width="200px" />
        
</asp:gridview>

     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDbConnectionString %>" 
         DeleteCommand="delete FROM [Cart_Table] where ([CartId] = @CartId)  " 
         SelectCommand="SELECT CartId, Cart_Table.Username,Pizza_Table.PizzaName, Quantity,Pizza_Table.PizzaPrice,Amount, State 
                         FROM Cart_Table inner join User_Table on Cart_Table.Username=User_Table.UserName
                         inner join Pizza_Table on Cart_Table.PizzaId=Pizza_Table.PizzaId
                         WHERE (Cart_Table.Username = @Username) AND (State = 1)"  OnDeleted="Deleted">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="confirmbtn" runat="server" Text="Confirm" OnClick="confirmbtn_Click" CssClass="btn btn-default" BackColor="#6E6A6A"  BorderColor="#585656" ForeColor="White" Font-Names="DejaVu Sans"/>
    <br />
        </div>
 
       <script runat = "server" >
           private void Deleted(object source, SqlDataSourceStatusEventArgs e)
           {

               calculation();

           }
        </script>
    
</asp:Content>
