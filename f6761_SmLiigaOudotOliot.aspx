<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_SmLiigaOudotOliot.aspx.cs" Inherits="f6761_SmLiigaOudotOliot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Oudot oliot Sm-liigassa</h1>

    <asp:Label ID="label2" runat="server" Text="Luo uusi pelaaja"></asp:Label> <br />
    <asp:Label ID="Label3" runat="server" Text="Sukunimi"></asp:Label>
    <asp:TextBox ID="txtSukunimi" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSukunimi" ErrorMessage="Nimi vaaditaan" ForeColor="Red" > </asp:RequiredFieldValidator> <br /> 
    <asp:Label ID="Label4" runat="server" Text="Etunimi"></asp:Label> 
    <asp:TextBox ID="txtEtunimi" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEtunimi" ErrorMessage="Nimi vaaditaan" ForeColor="Red" > </asp:RequiredFieldValidator> <br /> 
    <asp:Label ID="Label5" runat="server" Text="Seura"></asp:Label>
    <asp:DropDownList ID="listSeura" runat="server"> 
    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="listSeura" ErrorMessage="Seura vaaditaan" ForeColor="Red" > </asp:RequiredFieldValidator> <br /> 
    <asp:Label ID="Label6" runat="server" Text="Pelipaikka"></asp:Label>
    <asp:DropDownList ID="listPaikka" runat="server">
    </asp:DropDownList> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="listPaikka" ErrorMessage="Pelipaikka vaaditaan" ForeColor="Red" > </asp:RequiredFieldValidator> <br /> 
    <br />
    <asp:Button ID="BtnCreatePlayer" runat="server" Text="Tee uusi pelaaja" OnClick="BtnCreatePlayer_Click" /> <br /><br /><br />
    <asp:Label runat="server">Valitse filttereitä</asp:Label> 
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />

    <asp:Button ID="btnAllPlayers" runat="server" Text="Listaa kaikki pelaajat" OnClick="btnAllPlayers_Click" CausesValidation="false" />

    <asp:DropDownList ID="listTeam" runat="server" EnableViewState="true" OnSelectedIndexChanged="listTeam_SelectedIndexChanged" AutoPostBack="true" CausesValidation="false">
    </asp:DropDownList>
    <asp:DropDownList ID="listPosition" runat="server" EnableViewState="true" AutoPostBack="true" OnSelectedIndexChanged="listPosition_SelectedIndexChanged " CausesValidation="false">
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnSortByName" runat="server" Text="Järjestä nimen mukaan" OnClick="btnSortByName_Click" CausesValidation="false"/>
    <asp:Button ID="btnSortByPoints" runat="server" Text="Järjestä pisteiden mukaan" OnClick="btnSortByPoints_Click" CausesValidation="false"/>
    
    <asp:GridView ID="GridView1" runat="server" EnableViewState="true">
    </asp:GridView> <br /><br />

    


</asp:Content>

