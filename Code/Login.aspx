<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Nishu.Login" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div id="content" class="float_r">
      <div align=center>
     <h1>Log In Form</h1>
<table>
    <tr><td>Username</td><td>
        <asp:TextBox ID="uname" runat="server" ></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="uname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td><td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td></tr>
    
             <tr><td>Password</td><td>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td><td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
                 </td><td>
                     <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td></tr>

        

        <tr><td>
            <asp:Button ID="log" runat="server" Text="Log In"  
                Height="20px" onclick="log_Click" /></td><td>
                <asp:Button ID="Button1" runat="server" Text="Reset" Height="20px" /></td><td>
                    &nbsp;</td></tr>
    
    </table>
    </div>
    </div>
</asp:Content>

