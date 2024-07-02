<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="ATMProject.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="SBI Bank Info"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Size="Larger" Text="Deposit" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Font-Size="Larger" Text="Withdraw" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Font-Size="Larger" Text="Check Balance" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Font-Size="Larger" Text="Logout" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
