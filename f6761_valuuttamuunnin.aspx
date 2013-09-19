<%@ Page Title="Viikkotehtävä 1" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_valuuttamuunnin.aspx.cs" Inherits="f6761_valuuttamuunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />Tervetuloa: <br />
    <asp:TextBox ID="txtUser" runat="server" ReadOnly="True"></asp:TextBox> <br />
    Muunnan bitcoinit euroiksi, anna Bitcoinien määrä: <br />
    <asp:TextBox ID="txtCurrency" runat="server"></asp:TextBox> 
    <asp:Button ID="btnConvert" runat="server" Text="Muunna!" OnClick="btnConvert_Click" /><asp:Label ID="lblCounter" runat="server" Text="Laskutoimituksia: 0"></asp:Label> <br />
    <asp:Label ID="lblCurrency" runat="server" Text="..."></asp:Label> <br />
    <asp:ListBox ID="listBoxResultsHidden" runat="server"></asp:ListBox> 
    <asp:ListBox ID="listBoxResults" runat="server" EnableViewState="False"></asp:ListBox>
</asp:Content>

