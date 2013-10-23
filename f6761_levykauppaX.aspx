<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_levykauppaX.aspx.cs" Inherits="f6761_levykauppaX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> Levykauppa X</h1>
    <asp:Table ID="Table1" runat="server"></asp:Table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" >
        <ItemTemplate>
            <asp:Image id="kuva" runat="server" ImageUrl='~/Images/ + <%#Eval("ISBN") %>'/>
            <asp:Label ID="nameLabel" runat="server" Text='<%#Eval("Records/Artist")%>'></asp:Label>
            <asp:Label ID="cdLabel" runat="server" Text='<%#Eval("Title") %>'></asp:Label><br />
            ISBN: <asp:HyperLink ID="isbnlink" runat="server" Text='<%#Eval("ISBN") %>'></asp:HyperLink> <br />
            Hinta: <asp:Label ID="priceLabel" runat="server" Text='<%#Eval("Price") %>'></asp:Label><br />

        </ItemTemplate>

    </asp:DataList>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/LevykauppaX.xml"></asp:XmlDataSource>
</asp:Content>

