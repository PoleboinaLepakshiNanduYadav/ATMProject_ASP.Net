<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ATMProject.Dept" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Login Form"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Account No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Pin Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="L1" runat="server" Font-Size="Medium" Text="Display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationForm.aspx">Click here to Register?</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
