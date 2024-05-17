<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Nishu.Register" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div id="content" class="float_r">
        <div id="templatemo_content_right">
    <div id="Div1">
        
    <div align="center">
    <h1>
        New User Registration</h1>
    <table>
    <tr><td>First Name</td><td>
        <asp:TextBox ID="fname" runat="server"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="fname" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td></tr>
    
     <tr><td>Last Name</td><td>
        <asp:TextBox ID="lname" runat="server"></asp:TextBox></td><td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="lname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         </td></tr>

          <tr><td>Username</td><td>
        <asp:TextBox ID="usr" runat="server"></asp:TextBox></td><td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                 ControlToValidate="usr" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         </td></tr>
         <tr><td>E-mail</td><td>
        <asp:TextBox ID="email" runat="server"></asp:TextBox></td><td>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                     ControlToValidate="email" ErrorMessage="Enter a Valid Email Address" 
                     ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td></tr>

         <tr><td>Password</td><td>
        <asp:TextBox ID="passwd" runat="server" TextMode="Password"></asp:TextBox></td><td>
                 <asp:CustomValidator ID="CustomValidator1" runat="server" 
                     ControlToValidate="passwd" ErrorMessage="*" ForeColor="Red"></asp:CustomValidator>
             </td></tr>

         <tr><td class="style1">Confirm Password</td><td class="style1">
        <asp:TextBox ID="cpasswd" runat="server" TextMode="Password"></asp:TextBox></td>
             <td class="style1">
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                     ControlToCompare="passwd" ControlToValidate="cpasswd" ErrorMessage="*" 
                     ForeColor="Red"></asp:CompareValidator>
             </td></tr>

        <tr><td style="height: 40px">
            <asp:Button ID="signup" runat="server" Text="Register" onclick="signup_Click" 
                style="height: 26px" /></td><td style="height: 40px">
                <asp:Button ID="reset" runat="server" Text="Reset" onclick="reset_Click" />
           </td><td>
               <asp:Button ID="log" runat="server" Text="Log In" onclick="log_Click" /></td>
            <td style="height: 40px">  <asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td></tr>



            <tr><td> <asp:Button ID="del" runat="server" onclick="del_Click1" Text="Delete" /></td><td>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td><td>
            <asp:Button ID="up" runat="server" Text="Update" onclick="up_Click" /></td><td>
                <asp:Label ID="Label3" runat="server" Text=" "></asp:Label></td></tr>


    
    
    
    
    
    
    </table>
       
    </div>
    
    </div>
 </div>
    </div>
</asp:Content>

