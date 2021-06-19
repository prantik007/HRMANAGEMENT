<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="WebApplication2.Prantik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">WELCOME</span><b>&nbsp;&nbsp; </b>
        <asp:Label ID="lbl_welcome" runat="server" Font-Bold="True" Font-Italic="False" 
            ForeColor="#660066" CssClass="style2" Font-Size="X-Large"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_logout" runat="server" onclick="btn_logout_Click" 
            Text="LOGOUT" />
    </div>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btn_payslip" runat="server" Height="31px" 
            onclick="btn_payslip_Click" Text="My Payslip" Width="103px" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="110px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1048px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="employeeid" HeaderText="Employee id" />
                <asp:BoundField DataField="payslipid" HeaderText="Payslip ID" />
                <asp:BoundField DataField="month" HeaderText="Month" />
                <asp:BoundField DataField="monthname" HeaderText="Month Name" />
                <asp:BoundField DataField="year" HeaderText="Year" />
                <asp:BoundField DataField="generatedon" HeaderText="Generated on" />
                <asp:BoundField DataField="basicsalary" HeaderText="Basic salary" />
                <asp:BoundField DataField="noofleaves" HeaderText="No. of leave" />
                <asp:BoundField DataField="salaryperday" HeaderText="Salary per day" />
                <asp:BoundField DataField="deductionforleaves" 
                    HeaderText="Deduction for leaves" />
                <asp:BoundField DataField="netsalary" HeaderText="Net salary" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" 
            Text="Inbox" Width="121px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" Width="621px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </p>
    <p>
        <asp:Button ID="btn_reply" runat="server" Height="31px" 
            onclick="btn_reply_Click" Text="Reply" Width="62px" />
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="83px" TextMode="MultiLine" 
            Width="495px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lbl_sent" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btn_send" runat="server" Height="33px" onclick="btn_send_Click" 
            Text="Send" Width="60px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
