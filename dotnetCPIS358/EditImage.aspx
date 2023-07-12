<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditImage.aspx.cs" Inherits="dotnetCPIS358.EditImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table class="auto-style1">
        <tr>
            <td class="auto-style7" style="width: 197px; height: 50px">ID</td>
            <td class="auto-style8" style="height: 50px">
                <asp:TextBox ID="ID_image" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9" style="width: 404px; height: 50px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ID_image" ErrorMessage="ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 197px">Image</td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td class="auto-style9" style="width: 404px">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 197px; height: 41px"></td>
            <td class="auto-style5" style="height: 41px">
                <asp:Button ID="btnInsert0" runat="server" OnClick="Button_upload" Text="Upload" />
            </td>
            <td style="width: 404px; height: 41px"></td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 197px; height: 59px"></td>
            <td class="auto-style5" style="height: 59px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" SelectCommand="SELECT * FROM [TableImage]" InsertCommand="INSERT INTO TableImage(ID, Image) VALUES (@id, @img)">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="ID_image" Name="id" PropertyName="Text" />
                        <asp:ControlParameter ControlID="FileUpload2" Name="img" PropertyName="FileBytes" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 404px; height: 59px"></td>
        </tr>
    </table>
<br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="735px">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                        ImageUrl='<%# "data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
<br />
</asp:Content>
