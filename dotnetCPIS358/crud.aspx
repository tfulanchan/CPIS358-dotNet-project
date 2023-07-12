<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud.aspx.cs" Inherits="dotnetCPIS358.crud" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button_Update(object sender, EventArgs e)
    {

    }

    protected void Button_insert(object sender, EventArgs e)
    {
        
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
        * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  select {
  text-transform: none;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 256px;
        }
        .auto-style3 {
            width: 256px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 229px;
        }
        .auto-style6 {
            height: 23px;
            width: 229px;
        }
        .auto-style7 {
            width: 256px;
            height: 26px;
        }
        .auto-style8 {
            width: 229px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="INSERT INTO signup(ID, UserName, Password, Email, img) VALUES (@id, @username, @password, @email, @image)"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="DELETE FROM signup WHERE ID =@ID"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="UPDATE signup SET ID =@id, UserName =@user, Password =@password, Email =@email, img =@image"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">ID</td>
                <td class="auto-style8">
                    <asp:TextBox ID="ID_textbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ID_textbox" ErrorMessage="ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">User Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="username_textbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="username_textbox" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="password_textbox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password_textbox" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirmed Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="confirmed_textbox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmed_textbox" ErrorMessage="Confirmed Password is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password_textbox" ControlToValidate="confirmed_textbox" ErrorMessage="Password and Confirmed Password must be identical" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="email_textbox" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email_textbox" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_textbox" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Image</td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnInsert" runat="server" OnClick="Button_insert" Text="Insert" />                            
                    <asp:Button ID="btnDelete" runat="server" OnClick="Button_delete" Text="Delete" />
                    <asp:Button ID="btnUpdate" runat="server" OnClick="Button_update" Text="Update" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" SelectCommand="SELECT * FROM [signup]">
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
