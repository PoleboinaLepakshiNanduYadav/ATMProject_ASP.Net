<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithdrawForm.aspx.cs" Inherits="ATMProject.WithdrawForm" %>

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
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Withdraw Form"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Enter PinNo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt2" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Label ID="L3" runat="server" Font-Size="Large" Text="Display"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Enter Amount:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Transaction:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="L1" runat="server" Font-Size="Large" Text="Display"></asp:Label>
                &nbsp;<asp:Label ID="L2" runat="server" Font-Size="Large" Text="Display" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainForm.aspx">Click here for Homepage?</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
