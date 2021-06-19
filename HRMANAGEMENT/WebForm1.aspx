<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        body
        {
            
            text-align: center;
            background-image: url("http://www.aseonline.org/Portals/0/125779062.jpg");
            background-repeat: no-repeat;
        } 
        h1
        { font-family :"Times New Roman";
          font-size : 60px;
          text-align: center;
          color : Red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     
    
        <h1> 
        <strong><u>LOGIN</u></strong>
        </h1>
        <br />
        USERNAME:
        <asp:TextBox ID="TextBox1" runat="server"  ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        PASSWORD:<asp:TextBox ID="TextBox2" runat="server" 
            ontextchanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="LOGIN" />
    
    
        <p>
            <asp:Label ID="lbl_invalid" runat="server" ForeColor="#FF6600"></asp:Label>
        </p>
    
    
    </form>
</body>
</html>
