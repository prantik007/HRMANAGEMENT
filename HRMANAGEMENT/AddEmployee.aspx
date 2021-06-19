<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="WebApplication2.AddEmployee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: larger;
            text-align: center;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>NEW EMPLOYEE</strong></div>
    <p>
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="198px"></asp:TextBox>
    </p>
    <p>
        Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="198px"></asp:TextBox>
    </p>
    <p>
        Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="202px"></asp:TextBox>
    </p>
    <p>
        Designation:&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="192px"></asp:TextBox>
    </p>
    <p>
        levelid:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="98px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        username:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbuser" runat="server" Width="193px"></asp:TextBox>
    &nbsp;<asp:Label ID="lbldpuser" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
    </p>
    <p>
        password:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" ontextchanged="TextBox7_TextChanged" 
            Width="194px"></asp:TextBox>
    &nbsp;
        <asp:Label ID="lblpass" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Add Employee" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_useradded" runat="server" Font-Bold="True" 
        ForeColor="#000099"></asp:Label>
&nbsp;<br />
    <br />
    <asp:Button ID="btn_back" runat="server" Height="28px" onclick="btn_back_Click" 
        Text="Back" />
    <br />
    <br />
    <asp:Button ID="btn_logout" runat="server" onclick="btn_logout_Click" 
        Text="LOGOUT" />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
