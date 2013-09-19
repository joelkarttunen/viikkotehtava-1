<%@ Page Title="Joelin kotisivu :)" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_indexMP.aspx.cs" Inherits="f6761_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h2> Viikon 37 tuntiharkat</h2>
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisu</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/f6761_DBDemo.aspx">DB Demo</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/f6761_LocalDBDemo.aspx">Local DB Demo</asp:HyperLink> <br />

        <h2> Viikon 38 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/f6761_slave.aspx">Orjakalenteri</asp:HyperLink>

        <h2> Viikkotehtävät 1 ja 2</h2>
        <asp:TextBox ID="TextBox1" runat="server">Tähän nimesi</asp:TextBox>
        <asp:Button ID="btnParameter" runat="server" Text="Välitä parametrina" />
        <asp:Button ID="btnSaveSession" runat="server" Text="Tallenna Sessioniin" />
        <asp:Button ID="btnSaveCookie" runat="server" Text="Tallenna Cookieen" />
    </div>
</asp:Content>

