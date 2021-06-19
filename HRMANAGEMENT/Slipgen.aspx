<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slipgen.aspx.cs" Inherits="WebApplication2.Slipgen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: xx-large">
    
        <span class="style1">Enter details for </span>&nbsp;<asp:Label ID="Label1" 
            runat="server" Font-Size="XX-Large" style="text-decoration: underline"></asp:Label>
    
    </div>
    <p>
        Month-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        No. of leaves-&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" style="margin-bottom: 0px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
        Text="SUBMIT" Width="97px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_submitted" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btn_home" runat="server" Height="24px" onclick="btn_home_Click" 
        Text="Home" Width="99px" />
    <br />
    </form>
</body>
</html>
