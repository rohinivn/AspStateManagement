<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StateManagements.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="lblFirstname" runat="server" Text="FirstName"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>
            <td>
                <asp:RadioButton ID="rdoMale" Text="Male" runat="server" GroupName="Gender"/>
                <asp:RadioButton ID="rdoFemale" Text="Female" runat="server" GroupName="Gender"/>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="submit" runat="server" Text="Submit" />
            </td>
            
            <td>
                <asp:HyperLink ID="hypLogin" runat="server">Login</asp:HyperLink>

               </td>
        </tr>
    </table>
        

        </form>
</body>
</html>
