<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_DBControls2.aspx.cs" Inherits="DBControls2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Datasource määrittely -->

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieConnectionString %>" SelectCommand="SELECT [title], [director], [year] FROM [Movies]"></asp:SqlDataSource>
    <h1>DataControls to display a single data item</h1>
    <h2>DetailsView -control</h2>
    <p>Näyttää datan HTML-taulussa, tarvittaessa mahdollistaa lisäämisen ja muokkaamisen</p>
    <asp:DetailsView ID="DetailsView1" DataSourceID="SqlDataSource1" runat="server" AllowPaging="true">

    </asp:DetailsView>

    <h2>FormView -control</h2>
    <p>Näyttää datan ItemTemplaten avulla</p>
    <asp:FormView ID="FormView1" DataSourceID="SqlDatasource1" runat="server" AllowPaging="true">
        <ItemTemplate>
            <h3><%#Eval("title") %></h3> directed by <%#Eval("director") %> in <%#Eval("year") %>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

