﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="dotnetCPIS358.Login" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
        User Name:-<asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>  
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />  
        <br />  
        Password:-<asp:TextBox ID="tbpwd" runat="server" TextMode="Password"></asp:TextBox>  
        <br />  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />  
    </div>  
    </form>  
</body>  
</html> 