<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlinePizza.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>--%>
    <%--<form id="form1" runat="server">--%>
    <div style="width:400px; margin:auto; margin-top:100px;">
    
        <asp:Table ID="Table1" runat="server" Width="380px" >
            <asp:TableRow>
                <asp:TableCell>
                    <label>Username</label>
                </asp:TableCell>
                <asp:TableCell>
                   <asp:TextBox ID="nametxt" runat="server" ControlToValidate="nametxt"></asp:TextBox>
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
                    <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password"></asp:TextBox>
                   
                </asp:TableCell>
                  <asp:TableCell>
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="passwordtxt" ID="RequiredFieldValidator2" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:TableCell>  
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <label> Confirm Password</label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="cpasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
                   
                   
                </asp:TableCell>
                <asp:TableCell>
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="passwordtxt" ID="RequiredFieldValidator1" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:TableCell>  
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <label>Phoneno</label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="phonotxt" runat="server"></asp:TextBox>
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
                    <asp:TextBox ID="addtext" runat="server"></asp:TextBox>
                    
                </asp:TableCell>
             <asp:TableCell>
                      <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredField" ControlToValidate="passwordtxt" ID="RequiredFieldValidator4" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:TableCell>  
            </asp:TableRow>
           
       
        </asp:Table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="alertlbl" runat="server" Text="Label"></asp:Label>
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
