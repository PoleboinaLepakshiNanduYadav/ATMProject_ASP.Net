<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="ATMProject.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Registration Form"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Account No:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large">Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt2" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Font-Size="Large">PinNo:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt3" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large">Balance:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt4" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label6" runat="server" Font-Size="Large">MobileNo:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt5" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label7" runat="server" Font-Size="Large">EmailId:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt6" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Size="Medium" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Label ID="L1" runat="server" Font-Size="Medium" Text="Display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click here to LoginPage?</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
