<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositForm.aspx.cs" Inherits="ATMProject.DepositForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Deposit Form"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td align="right" class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Enter PinNo:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button1_Click1" />
                &nbsp;<asp:Label ID="L2" runat="server" Text="Display"></asp:Label>
                    <asp:Label ID="L4" runat="server" Text="Display" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label5" runat="server" Font-Size="Larger" Text="Enter Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt2" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                    <asp:Label ID="L3" runat="server" Text="Display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainForm.aspx">Click here for Mainpage?</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
