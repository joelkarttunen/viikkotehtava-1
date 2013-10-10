<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_ValiPalaute.aspx.cs" Inherits="f6761_ValiPalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2> Anna palautetta!</h2>
    <asp:Label ID="Label1" runat="server" Text="Päivämäärä"></asp:Label> <br />
    <asp:TextBox ID="txtBoxDate" runat="server" Enabled="False"></asp:TextBox> <br />

    
    <asp:Label ID="Label2" runat="server" Text="Nimi"></asp:Label> <br />
    <asp:TextBox ID="txtBoxName" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Nimi vaaditaan" ForeColor="Red" > </asp:RequiredFieldValidator> <br /> 

    <asp:Label ID="Label3" runat="server" Text="Mitä olen oppinut"></asp:Label> <br />
    <asp:TextBox ID="txtBoxLearned" runat="server"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxLearned" ErrorMessage="Kirjoita oppimisesta" ForeColor="Red" > </asp:RequiredFieldValidator> <br />
    <asp:Label ID="Label6" runat="server" Text="Mitä haluaisin oppia"></asp:Label> <br />
    <asp:TextBox ID="txtBoxWantLearn" runat="server"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxWantLearn" ErrorMessage="Kirjoita haluistasi" ForeColor="Red" >  </asp:RequiredFieldValidator><br />
    <asp:Label ID="Label7" runat="server" Text="Hyvää:"></asp:Label> <br />
    <asp:TextBox ID="txtBoxGood" runat="server"></asp:TextBox>     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBoxGood" ErrorMessage="On tällä kurssilla jotain hyvää" ForeColor="Red" >  </asp:RequiredFieldValidator>
 <br />
    <asp:Label ID="Label4" runat="server" Text="Parannettavaa"></asp:Label> <br />
    <asp:TextBox ID="txtBoxImprove" runat="server"></asp:TextBox>     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBoxImprove" ErrorMessage="Ei tämä kurssi täydellinen ole" ForeColor="Red" >  </asp:RequiredFieldValidator>
 <br />
    <asp:Label ID="Label5" runat="server" Text="Muuta"></asp:Label>  
 <br />
    
    <asp:TextBox ID="txtBoxOther" runat="server"></asp:TextBox> <br />
   
   
     <asp:Button ID="sendPalaute" runat="server" Text="Lähetä" OnClick="sendPalaute_Click" /> <br />
     
    
    <h2>Palautteet</h2>
    <asp:Button ID="getStuff" runat="server" Text="Hae Palautteet" OnClick="getStuff_Click" CausesValidation="false" /> 
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Palautteet.xml" TransformFile="~/App_Data/palautteet.xsl"></asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True">
    </asp:GridView>
    <br />
</asp:Content>

