<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_GridViewDataSource.aspx.cs" Inherits="f6761_GridViewDataSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>GridView kontrolli</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieConnectionString %>" SelectCommand="SELECT [title], [director], [year] FROM [Movies]"></asp:SqlDataSource>

    <h2>DataList kontrolli</h2>
    <p>Datalist esittää datan HTML-taulussa, määritetään näytettävä data ItemTemplatella </p>
    <asp:DataList ID="DataList1" DataSourceID="SqlDataSource1" runat="server">
        <ItemTemplate>Elokuvan <%#Eval("title") %> on ohjannut <%#Eval("director") %> vuonna <%#Eval("year") %>.</ItemTemplate>
    </asp:DataList>

    <h2>Repeater kontrolli</h2>
    <p>Repeater näyttää datarivejä käyttäen templatea, ei renderoi automaattisesti HTML-taulua</p>

    <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
        <ItemTemplate>
            Movie <%#Eval("title") %> directed by <b><%#Eval("director") %></b> in <%#Eval("year") %> .
            <br />
        </ItemTemplate>
    </asp:Repeater>

    <h2>ListView -kontrolli</h2>
    <p>Tämäkin näyttää datarivejä käyttäen templatea, tukee sorttausta, sivutusta ja datan editointia</p>

    <asp:ListView ID="ListView1" DataSourceID="SqlDataSource1" runat="server">
        <LayoutTemplate>
            <div id="itemPlaceholder" runat="server"></div>
            <asp:DataPager ID="pager1" PageSize="4" runat="server">
                <Fields>
                    <asp:NumericPagerField />
                </Fields>
            </asp:DataPager>
        </LayoutTemplate>
        <ItemTemplate>
            Movie <%#Eval("title") %> directed by <b><%#Eval("director") %></b> in <%#Eval("year") %> .
            <br />
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

