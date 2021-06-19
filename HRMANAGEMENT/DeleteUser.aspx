<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="WebApplication2.DeleteUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 480px">
    
        <asp:Label ID="lbl_sure" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" Font-Underline="True" ForeColor="#CC0000" 
            Text="Are you Sure?"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_yes" runat="server" onclick="btn_yes_Click" Text="Yes" 
            Width="54px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_no" runat="server" onclick="btn_no_Click" Text="No" 
        Width="58px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_ok" runat="server" onclick="btn_ok_Click" Text="OK" 
            Width="56px" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
