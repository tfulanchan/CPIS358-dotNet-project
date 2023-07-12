<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="dotnetCPIS358.Seearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Search here"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        </div>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
    </form>
</body>
</html>
