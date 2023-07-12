<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SessionRedirect.aspx.cs" Inherits="dotnetCPIS358.SessionRedirect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div style="font-family: Arial">
        <table>
            <tr>
                <td colspan="2">
                    <h1>SessionRedirect</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Column1 from Session is: </b>
                </td>
                <td>:<asp:Label ID="lblColumn1" runat="server">
                </asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Column2 from Session is: </b>
                </td>
                <td>:<asp:Label ID="lblColumn2" runat="server">
                </asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>

