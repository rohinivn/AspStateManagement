<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StateManagements.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUpForm</title>
</head>
<body>
    <form id="RegisterForm" runat="server">

        <h1>Register</h1>
        <table style="width: 100%;" >
            <tr>
                <td>
                    <asp:Label ID="lblFirstname" runat="server" Text="FirstName"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ForeColor="Red" ErrorMessage="Name is required" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                </td>
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
                    <asp:RadioButton ID="rdbOthers" Text="Others" runat="server" GroupName="Gender" />
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ForeColor="Red" ErrorMessage="Gender is required" ControlToValidate="txtGender"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidatorAge" runat="server"  ForeColor="Red" ErrorMessage="Age sholud be in 3-65" ControlToValidate="txtAge" MinimumValue="3" MaximumValue="65" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ForeColor="Red" ErrorMessage="Age is required" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ForeColor="Red" ErrorMessage="Address is required" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownListCity" runat="server">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                        <asp:ListItem>Coimbatore </asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Salem</asp:ListItem>
                        <asp:ListItem>Erode</asp:ListItem>
                        <asp:ListItem>Trichy</asp:ListItem>
                        <asp:ListItem>Tripur</asp:ListItem>
                        <asp:ListItem>Madurai</asp:ListItem>
                        <asp:ListItem>Pondicherry</asp:ListItem>
                        <asp:ListItem>Karaikal</asp:ListItem>
                    </asp:DropDownList>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ForeColor="Red" ErrorMessage="City is required" ControlToValidate="DropDownListCity""></asp:RequiredFieldValidator>--%>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblState" runat="server" Text="State"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownListState" runat="server">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                        <asp:ListItem>TamilNadu</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" ForeColor="Red" ErrorMessage="State is required" ControlToValidate="DropDownListState" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPinCode" runat="server" Text="PinCode"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPinCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPinCode" runat="server" ForeColor="Red" ErrorMessage="PinCode is required" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
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
                    <asp:Label ID="lblCP" runat="server" Text="ConfirmPassword"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtCP" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCP" runat="server" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="txtCP"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="Password and Confirm Password sholud match" ControlToValidate="txtCP" ControlToCompare="txtPassword"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="SubmitButtonClick" />
                </td>
                <td>
                    <input id="Reset" type="reset" value="reset" />
                </td>
            </tr>
        </table>
        <p>
         Already have an account??<asp:HyperLink ID="hypLogin" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
           
        </p>
    </form>
</body>
</html>
