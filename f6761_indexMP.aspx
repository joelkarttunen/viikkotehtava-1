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
        <asp:TextBox ID="txtName" runat="server">Tähän nimesi</asp:TextBox>
        <asp:Button ID="btnParameter" runat="server" Text="Välitä parametrina" OnClick="btnParameter_Click" />
        <asp:Button ID="btnSaveSession" runat="server" Text="Tallenna Sessioniin" OnClick="btnSaveSession_Click" />
        <asp:Button ID="btnSaveCookie" runat="server" Text="Tallenna Cookieen" OnClick="btnSaveCookie_Click" /> <br />

        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/f6761_ElakeLaskuri.aspx">Eläkelaskuri</asp:HyperLink>

        <h2> Viikon 39 tuntiharkat</h2>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/f6761_GridViewDataSource.aspx">Demo of Databound Controls</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/f6761_DBControls2.aspx">Demo for single </asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/f6761_Records.aspx">XML-data</asp:HyperLink> <br />

        <h2>Teht 4</h2>
        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/f6761_WanhatAutot.aspx">Wanhat autot</asp:HyperLink> <br />

        <h2>Teht 5</h2>
        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/f6761_levykauppaX.aspx">Levykauppa x</asp:HyperLink> <br />

        <h2>Teht 6</h2>
        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/f6761_SmLiigaOudotOliot.aspx">SM Liigan oudot oliot</asp:HyperLink> <br />

        <h2>Teht 7 & 8 (ulkoasu jäi kiireen takia vähän köyhäksi</h2>
        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/f6761_Autokauppa.aspx">Jinta-Rouppi</asp:HyperLink> <br />

        
    </div>
</asp:Content>

