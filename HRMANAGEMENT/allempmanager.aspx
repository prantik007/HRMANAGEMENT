<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allempmanager.aspx.cs" Inherits="WebApplication2.allempmanager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="employeeid" DataSourceID="SqlDataSource1" 
        Height="235px" Width="929px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="employeeid" HeaderText="employeeid" 
                InsertVisible="False" ReadOnly="True" SortExpression="employeeid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="levelid" HeaderText="levelid" 
                SortExpression="levelid" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="designation" HeaderText="designation" 
                SortExpression="designation" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:payrollConnectionString2 %>" 
        SelectCommand="SELECT [employeeid], [name], [phone], [email], [levelid], [username], [designation] FROM [employees] ORDER BY [employeeid]">
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
    <div style="margin-left: 400px">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Home" />
    </div>
    </form>
</body>
</html>
