<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewMsg.aspx.cs" Inherits="WebApplication2.NewMsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        NEW MESSAGE<br />
        <br />
    
    </div>
    &nbsp;&nbsp; TO:&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString3 %>" 
        SelectCommand="SELECT [name] FROM [employees]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="127px" Width="484px" 
        Rows="10" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbl_sent" runat="server" ForeColor="#FF3300"></asp:Label>
    <br />
    <asp:Button ID="btn_send" runat="server" onclick="btn_send_Click" Text="SEND" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Go Back" />
    </form>
</body>
</html>
