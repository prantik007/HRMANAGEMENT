<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loggedout.aspx.cs" Inherits="WebApplication2.Loggedout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 440px">
    
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; text-decoration: underline; font-size: larger; text-align: center" 
            Text="LOGGED OUT"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" 
            Text="OK" Width="58px" />
    
    </div>
    </form>
</body>
</html>
