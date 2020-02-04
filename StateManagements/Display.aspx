<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="StateManagements.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="displayForm" runat="server">
        <h1>Displaying Details</h1>
        <table style="width: 100%;">
            <tr>
                <td>FirstName</td>
                <td>:<asp:Label ID="lblFirstName" runat="server">
                </asp:Label>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>:<asp:Label ID="lblLastName" runat="server">
                </asp:Label>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>:<asp:Label ID="lblAge" runat="server">
                </asp:Label>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>:<asp:Label ID="lblEmail" runat="server">
                </asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
