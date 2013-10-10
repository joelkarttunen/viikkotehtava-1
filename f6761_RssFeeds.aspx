<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_RssFeeds.aspx.cs" Inherits="f6761_RssFeeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="myDataSource" runat="server"
        XPath="rss/channel/item" />
    <asp:Button ID="btnGetMS" runat="server"
        OnClick="btnGetMS_Click" Text="Microsoft" />
    <asp:Button ID="btnGetIS" runat="server"
        OnClick="btnGetIS_Click" Text="IltaSanomat" />
    <asp:Button ID="btnGetLiiga" runat="server"
        OnClick="btnGetLiiga_Click" Text="Liiga" />
    <h1><asp:Label ID="lblHeader" runat="server" Text="..." /> </h1>
    <asp:Label ID="lblBody" runat="server" Text="..." />
    <asp:Table ID="myDataTable" runat="server" />
    <!-- Demo: rssfeedien haku ilman koodausta -->
    <asp:XmlDataSource
        ID="XmlDataSource2"
        runat="server"
        DataFile ="<%$ AppSettings:rssFeeditSF%>"
        TransformFile="~/App_Data/rssfeeds.xsl"
        XPath="rss/channel/item" />
    <asp:GridView
        ID="myGridView"
        runat="server"
        DataSourceID="XmlDataSource2"
        AutoGenerateColumns="true"/>
</asp:Content>

