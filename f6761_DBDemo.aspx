<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f6761_DBDemo.aspx.cs" Inherits="f6761_DBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kiljukellari</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Kellarista löytyypi kiljua</h1>

    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="DeliverID" HeaderText="DeliverID" SortExpression="DeliverID" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="wineType" HeaderText="wineType" SortExpression="wineType" />
                <asp:BoundField DataField="InStock" HeaderText="InStock" SortExpression="InStock" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ViiniConnectionString1 %>" DeleteCommand="DELETE FROM [wine] WHERE [ID] = @ID" InsertCommand="INSERT INTO [wine] ([Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock]) VALUES (@Name, @Country, @DeliverID, @Year, @Price, @wineType, @InStock)" ProviderName="<%$ ConnectionStrings:ViiniConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Name], [Country], [DeliverID], [Year], [Price], [wineType], [InStock] FROM [wine]" UpdateCommand="UPDATE [wine] SET [Name] = @Name, [Country] = @Country, [DeliverID] = @DeliverID, [Year] = @Year, [Price] = @Price, [wineType] = @wineType, [InStock] = @InStock WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="DeliverID" Type="Int32" />
                <asp:Parameter Name="Year" Type="Int16" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="wineType" Type="String" />
                <asp:Parameter Name="InStock" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
