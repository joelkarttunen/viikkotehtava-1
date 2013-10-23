<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_WanhatAutot.aspx.cs" Inherits="WanhatAutot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Hae kaikki autot"></asp:Label> <br />
    <asp:Button ID="btnKallein" runat="server" Text="Kallein ensin" OnClick="btnKallein_Click" /> 
    <asp:Button ID="btnHalvin" runat="server" Text="Halvin ensin" OnClick="btnHalvin_Click" /> <br />
    <asp:Label ID="Label2" runat="server" Text="Valitse merkki listalta"></asp:Label> <br />
    <asp:DropDownList ID="listMerkit" runat="server" OnSelectedIndexChanged="listMerkit_SelectedIndexChanged" OnTextChanged="listMerkit_TextChanged" AutoPostBack="true">
    </asp:DropDownList> <br />
    <asp:Label ID="Label3" runat="server" Text="Hae autoa"></asp:Label> <br />
    <asp:TextBox ID="txtHaku" runat="server"></asp:TextBox> <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/WanhatAutot.xml" TransformFile="~/App_Data/WanhatAutot.xsl"></asp:XmlDataSource>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</asp:Content>

