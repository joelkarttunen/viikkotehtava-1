<%@ Page Title="RegEx testi" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_MyRegEx.aspx.cs" Inherits="f6761_MyRegEx" Theme="Kaunis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Regulaari Expressioni testi hommeli</h1>
    <h2>Kirjoita oheiseen tekst poksiin testattava teksti</h2>
    <asp:Label ID="Label1" runat="server" Text="Ole hyvä ja anna nimesi"></asp:Label><br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID="btnName" runat="server" Text="Button" /> <br />
    <asp:RegularExpressionValidator runat="server" id="nameValidator" 
    ControlToValidate="txtName" ErrorMessage="Nimesi sisältää virheitä! Vaihda se maistraatissa."  
    ValidationExpression="([a-öA-Ö]{1,40})?" />
    <br/>
    <asp:Label ID="Label2" runat="server" Text="Ole hyvä ja anna sähköpostisi"></asp:Label> <br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:Button ID="btnEmail" runat="server" Text="Button" /> <br />
    <asp:Image ID="Image1" runat="server" SkinID="CompanyLogo" />
    <asp:HyperLink ID="hyperlink1" runat="server" NavigateUrl="~/f6761_MyRegEx.aspx?theme=Kaunis">Kaunis teema</asp:HyperLink>
    <asp:HyperLink ID="hyperlink2" runat="server" NavigateUrl="~/f6761_MyRegEx.aspx?theme=Ruma">Ei niin kaunis teema</asp:HyperLink>
    
</asp:Content>

