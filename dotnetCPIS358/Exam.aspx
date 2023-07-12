<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="dotnetCPIS358.Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="ID: "></asp:Label>
    <asp:TextBox ID="IDBox" runat="server"></asp:TextBox>
    <asp:Label ID="error" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="FirsrtName: "></asp:Label>
    <asp:TextBox ID="FirstNameBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox>
    <asp:Button ID="Insert" runat="server" Text="Button" OnClick="Insert_Click" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" InsertCommand="INSERT INTO exam(ID, FirstName, Email) VALUES (@IDbox,@FirstNamebox,@Emailbox)" SelectCommand="SELECT [ID], [FirstName], [Email] FROM [exam]">
        <InsertParameters>
            <asp:ControlParameter ControlID="IDBox" Name="IDbox" PropertyName="Text" />
            <asp:ControlParameter ControlID="FirstNameBox" Name="FirstNamebox" PropertyName="Text" />
            <asp:ControlParameter ControlID="EmailBox" Name="Emailbox" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
</asp:Content>
