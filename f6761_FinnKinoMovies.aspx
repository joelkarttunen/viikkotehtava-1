<%@ Page Title="FinnKinon elokuvat tänään" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_FinnKinoMovies.aspx.cs" Inherits="f6761_FinnKinoMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <asp:Button ID="btnGetTheatres" runat="server" Text="Hae teatterit" OnClick="btnGetTheatres_Click" /> <br />
    <asp:ListBox ID="myListBox" runat="server" DataTextField="ID"
        rows="18" OnSelectedIndexChanged="myListBox_SelectedIndexChanged"
        AutoPostBack="true" />
    <br />
    <asp:XmlDataSource ID="myDataSource" runat="server" XPath="Schedule/Shows/Show" />
    <asp:Repeater ID="myRepeater" runat="server" >
        <ItemTemplate>
            <!-- elokuvan nimi -->
            <asp:Label ID="label1" runat="server"
                Text = '<%#XPath("Title") %>' />
                     <!-- esitetään elokuvan kuva -->
            <asp:Image ID="image1" runat="server"
                ImageUrl ='<%#XPath("Images/EventSmallImagePortrait") %>' />
            <br></br>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

