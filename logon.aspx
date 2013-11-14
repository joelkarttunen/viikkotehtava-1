<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="logon.aspx.cs" Inherits="logon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2>Kirjaudu Sisään</h2>
    <asp:Label ID="Label1" runat="server" Text="Tunnus (jinta):"></asp:Label>
    <asp:TextBox ID="txtTunnus" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Salasana (rouppi):"></asp:Label>
    <asp:TextBox ID="txtSalasana" runat="server"></asp:TextBox>
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
    
</asp:Content>

