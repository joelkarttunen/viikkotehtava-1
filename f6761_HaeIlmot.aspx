<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_HaeIlmot.aspx.cs" Inherits="f6761_HaeIlmot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="srcIlmot" ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=DemoxOy;Persist Security Info=True; User ID=koodari;
        Password=koodari13"
        SelectCommand="SELECT asioid, lastname, firstname, date FROM lasnaolot WHERE course like 'IIO13200%' ORDER BY asioid" runat="server">


    </asp:SqlDataSource>
    <h2>Hae läsnäoloja</h2>
    <asp:Label ID="Label1" runat="server" Text="Nimi"></asp:Label><br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    
    <asp:Label ID="Label2" runat="server" Text="AsioID"></asp:Label>
    <asp:TextBox ID="txtAsioID" runat="server"></asp:TextBox>
    
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="btnHae" runat="server" Text="Hae läsnäolosi" OnClick="btnHae_Click" />
    <h2>Syksyn läsnäolot</h2>

    <asp:GridView runat="server" DataSourceID="srcIlmot" ID="Gridview1" ></asp:GridView>
</asp:Content>

