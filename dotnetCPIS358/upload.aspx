<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="dotnetCPIS358.upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
    <div>
    <asp:FileUpload ID="fileuploadimages" runat="server" />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    </div>
    <div>
    <asp:GridView runat="server" ID="gvImages" AutoGenerateColumns="False" DataSourceID="sqldataImages" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" >
    <Columns>
    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
    </Columns>

<HeaderStyle BackColor="#61A6F8"></HeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="sqldataImages" runat="server"  ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>"
    SelectCommand="SELECT * FROM [TableImage]" >
    </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>

</asp:Content>
