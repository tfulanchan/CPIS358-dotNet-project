<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditInfo.aspx.cs" Inherits="dotnetCPIS358.EditInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7" style="width: 197px; height: 50px">ID</td>
            <td class="auto-style8" style="height: 50px">
                <asp:TextBox ID="ID_textbox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9" style="width: 404px; height: 50px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ID_textbox" ErrorMessage="ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 197px; height: 42px;">User Name</td>
            <td class="auto-style8" style="height: 42px">
                <asp:TextBox ID="username_textbox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9" style="width: 404px; height: 42px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="username_textbox" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 197px; height: 51px;">Password</td>
            <td class="auto-style8" style="height: 51px">
                <asp:TextBox ID="password_textbox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style9" style="width: 404px; height: 51px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password_textbox" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 197px">Confirmed Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="confirmed_textbox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 404px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmed_textbox" ErrorMessage="Confirmed Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password_textbox" ControlToValidate="confirmed_textbox" ErrorMessage="Password and Confirmed Password must be identical" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 197px; height: 40px">Email</td>
            <td class="auto-style6" style="height: 40px">
                <asp:TextBox ID="email_textbox" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style4" style="width: 404px; height: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email_textbox" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_textbox" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 197px; height: 41px"></td>
            <td class="auto-style5" style="height: 41px">
                <asp:Button ID="btnInsert" runat="server" OnClick="Button_insert" Text="Insert" />
                <asp:Button ID="btnDelete" runat="server" OnClick="Button_delete" Text="Delete" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="Button_update" Text="Update" />
                <asp:Button ID="btnSearch" runat="server" OnClick="Button_search" Text="Search" />
            </td>
            <td style="width: 404px; height: 41px"></td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 197px; height: 59px"></td>
            <td class="auto-style5" style="height: 59px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" SelectCommand="SELECT * FROM [signup]" DeleteCommand="DELETE FROM signup WHERE ID=@ID" InsertCommand="INSERT INTO signup(ID, UserName, Password, Email) VALUES (@ID, @username, @password, @email)" UpdateCommand="UPDATE signup SET ID =@id, UserName =@username, Password =@password, Email =@email where ID =@ID">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="ID_textbox" Name="ID" PropertyName="Text" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="ID_textbox" Name="ID" PropertyName="Text" />
                        <asp:ControlParameter ControlID="username_textbox" Name="username" PropertyName="Text" />
                        <asp:ControlParameter ControlID="password_textbox" Name="password" PropertyName="Text" />
                        <asp:ControlParameter ControlID="email_textbox" Name="email" PropertyName="Text" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ID_textbox" Name="ID" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="ID_textbox" Name="id" PropertyName="Text" />
                        <asp:ControlParameter ControlID="username_textbox" Name="username" PropertyName="Text" />
                        <asp:ControlParameter ControlID="password_textbox" Name="password" PropertyName="Text" />
                        <asp:ControlParameter ControlID="email_textbox" Name="email" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 404px; height: 59px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" SelectCommand="SELECT * FROM [signup] WHERE ID = @ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ID_textbox" Name="ID" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" Width="758px">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
</asp:GridView>
    <br />
<asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2">
</asp:GridView>
    <br />
    <p>
                protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                // Handle the exception
            }
            else if (e.AffectedRows == 0)
            {
                // Data does not exist in the database
            }
            else
            {
                // Data already exists in the database
                error.Text = "Data already exists.";
            }
        }
    </p>
    <br />
    <p>
        protected void CheckDataExists(string data)
{
    string connectionString = "Data Source=myServerAddress;Initial Catalog=myDataBase;User Id=myUsername;Password=myPassword;";
    string query = "SELECT COUNT(*) FROM Table WHERE Column1 = @Data OR Column2 = @Data OR Column3 = @Data";

    using (SqlConnection connection = new SqlConnection(connectionString))
    {
        SqlCommand command = new SqlCommand(query, connection);
        command.Parameters.AddWithValue("@Data", data);

        connection.Open();

        int count = (int)command.ExecuteScalar();

        if (count > 0)
        {
            // Data already exists in the database
            errorLabel.Text = "Data already exists.";
        }
        else
        {
            // Data does not exist in the database
        }
    }
}
      
    </p>
    <br />
</asp:Content>
