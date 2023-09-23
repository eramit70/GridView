<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllData.aspx.cs" Inherits="GridView18Sep.AllData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            width: 453px;
            height: 184px;
            background-color: #000000;
        }
        .auto-style2 {
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <center>
                <h2> Grid View </h2>
                    <p> by - Amit(32982)</p>
            <table class="auto-style1">
                <h4 class="auto-style2"> Fill the information </h4>
                <tr>
                    <td> Enter the Student Name : <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td> Enter the Subject Name  : <asp:TextBox ID="txtsub" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td> Enter the Marks : <asp:TextBox ID="txtmarks" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td colspan="2"> 
                        <br />
                        <asp:Button ID="btnsave" runat="server" Text="save" OnClick="btnsave_Click" Height="29px" Width="60px" />
                        </td>

                </tr>
            </table>
            </center>

            <hr />
            <hr />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" ReadOnly="True" SortExpression="sid" />
                    <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                    <asp:BoundField DataField="ssubject" HeaderText="ssubject" SortExpression="ssubject" />
                    <asp:BoundField DataField="smarks" HeaderText="smarks" SortExpression="smarks" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AssignmentConnectionString %>" SelectCommand="SELECT * FROM [Result]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Result] WHERE [sid] = @original_sid AND (([sname] = @original_sname) OR ([sname] IS NULL AND @original_sname IS NULL)) AND (([ssubject] = @original_ssubject) OR ([ssubject] IS NULL AND @original_ssubject IS NULL)) AND (([smarks] = @original_smarks) OR ([smarks] IS NULL AND @original_smarks IS NULL))" InsertCommand="INSERT INTO [Result] ([sname], [ssubject], [smarks]) VALUES (@sname, @ssubject, @smarks)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Result] SET [sname] = @sname, [ssubject] = @ssubject, [smarks] = @smarks WHERE [sid] = @original_sid AND (([sname] = @original_sname) OR ([sname] IS NULL AND @original_sname IS NULL)) AND (([ssubject] = @original_ssubject) OR ([ssubject] IS NULL AND @original_ssubject IS NULL)) AND (([smarks] = @original_smarks) OR ([smarks] IS NULL AND @original_smarks IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_sname" Type="String" />
                    <asp:Parameter Name="original_ssubject" Type="String" />
                    <asp:Parameter Name="original_smarks" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="ssubject" Type="String" />
                    <asp:Parameter Name="smarks" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="ssubject" Type="String" />
                    <asp:Parameter Name="smarks" Type="Int32" />
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_sname" Type="String" />
                    <asp:Parameter Name="original_ssubject" Type="String" />
                    <asp:Parameter Name="original_smarks" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
