<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cookie.aspx.cs" Inherits="dotnetCPIS358.Cookie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h6>protected void btnSendData(object sender, EventArgs e)</h6>
    <p>HttpCookie cookie = new HttpCookie("ItemInfo");</p>
    <p>cookie["Number"] = txtNumber.Text;</p>
    <p>cookie["Name"] = txtName.Text;</p>
    <p><strong>//Adjust the time of cookie</strong></p>
    <p>cookie.Expires = DateTime.Now.AddSeconds(10);</p>
    <p>Response.Cookies.Add(cookie);</p>
    <p>Response.Redirect("CookieRedirect.aspx");</p>
    <br />
    <form method="post">
        <div>
            Item Number:
            <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
            <br />
            Item Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SendData" runat="server" OnClick="btnSendData" Text="Go to CookieRedirect" />

        </div>

    </form>

    <form method="post">
        <p>
            &nbsp;</p>
    </form>

</asp:Content>
