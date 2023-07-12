<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="dotnetCPIS358.Session" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-family: Arial">
        <table>
            <tr>
                <td colspan="2">
                    <h1>Session</h1>
                    <p>Submit values in Column1 and Column2 and they will be shown in SessionRedirect</p>
                    <p>Session["Column1"] = txtColumn1.Text;</p>
                    <p>Session["Column2"] = txtColumn2.Text;</p>
                    <p>Response.Redirect("SessionRedirect.aspx");</p>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Column1: </b>
                </td>
                <td><asp:TextBox ID="txtColumn1" runat="server">
                </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Column2: </b>
                </td>
                <td><asp:TextBox ID="txtColumn2" runat="server">
                </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSendData" runat="server"
                        Text="Go to WebForm2" OnClick="btnSendData_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
