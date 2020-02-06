<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StateManagements.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginPage</title>
    <link href="Style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="LoginForm" runat="server">
       <marquee><h1>Login</h1> </marquee>
        <table align="center">
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
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="LoginButtonClick" /></td>
                <td>
                    <input id="Reset" type="reset" value="reset" />
                </td>
            </tr>
            <tr>
                <td><br/>Don't have an account??<asp:HyperLink ID="hypSignUp" runat="server" NavigateUrl="~/Register.aspx">SignUp</asp:HyperLink>

                </td>
            </tr>
        </table>

    </form>
</body>
</html>
