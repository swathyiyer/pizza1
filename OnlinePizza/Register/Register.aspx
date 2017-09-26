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
<div style="margin-top:100px; margin-left: auto; margin-right: auto; margin-bottom: auto;" class="auto-style1">

    
    
        <asp:Table ID="Table1" runat="server" Width="356px" CssClass="bt" Height="125px" CellSpacing="1" >
            <asp:TableRow>
                <asp:TableCell>
                    <label>Username</label>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="nametxt" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:TableCell>
                  <asp:TableCell>
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="nametxt" ID="r1" Display="Dynamic"></asp:RequiredFieldValidator>
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
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="passwordtxt" ID="RequiredFieldValidator2" Display="Dynamic"></asp:RequiredFieldValidator>
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
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="passwordtxt" ID="RequiredFieldValidator3" Display="Dynamic"></asp:RequiredFieldValidator>
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
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="passwordtxt" ID="RequiredFieldValidator4" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:TableCell>  
            </asp:TableRow>
           
           
       
        </asp:Table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="alertlbl" runat="server"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="confirmbtb" runat="server" Text="Confirm" OnClick="confirmbtb_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cancelbtn" runat="server" Text="Cancel" CausesValidation="False" OnClick="cancelbtn_Click"/>
    </div>
        
<%--    </form>--%>
<%--</body>
</html>--%>

</asp:Content>
