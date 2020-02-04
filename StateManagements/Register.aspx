<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StateManagements.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="RegisterForm" runat="server">

        <h1>Register</h1>
        <table style="width: 100%;">
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
                    <asp:RadioButton ID="rdbMale" Text="Male" runat="server" GroupName="Gender" />
                    <asp:RadioButton ID="rdbFemale" Text="Female" runat="server" GroupName="Gender" />

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
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ForeColor="Red" ErrorMessage="Email is mandatory" ControlToValidate="txtemail"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCP" runat="server" Text="ConfirmPassword"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                    <%--<asp:CompareValidator ID="CompareValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password and Confirm Password sholud match" ControlToValidate="txtCP" ControlToCompare="txtPassword"></asp:CompareValidator>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="SubmitButtonClick" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
