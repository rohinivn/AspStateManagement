<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StateManagements.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginForm</title>
</head>
<body>
    <form id="LoginForm" runat="server">
        <h1>Login</h1>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ForeColor="Red" ErrorMessage="Name is required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ForeColor="Red" ErrorMessage="Email is mandatory" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="LoginButtonClick"/></td>
            </tr>
        </table>
        <p>
         Don't have an account??<asp:HyperLink ID="hypSignUp" runat="server" NavigateUrl="~/Register.aspx">SignUp</asp:HyperLink>
           
        </p>
    </form>
</body>
</html>
