<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="GridView18Sep.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LocationsConnectionString %>" DeleteCommand="DELETE FROM [Addreses] WHERE [id] = @original_id AND [country] = @original_country AND [State] = @original_State AND [City] = @original_City" InsertCommand="INSERT INTO [Addreses] ([country], [State], [City]) VALUES (@country, @State, @City)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Addreses]" UpdateCommand="UPDATE [Addreses] SET [country] = @country, [State] = @State, [City] = @City WHERE [id] = @original_id AND [country] = @original_country AND [State] = @original_State AND [City] = @original_City">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_country" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_country" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
