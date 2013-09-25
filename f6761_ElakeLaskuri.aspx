<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_ElakeLaskuri.aspx.cs" Inherits="f6761_ElakeLaskuri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <div class ="well" id="mainContent" runat="server">
    <div class="row">
        <div class="col-md-2">
            <asp:Label ID="Label1" runat="server" Text="Ikä"></asp:Label> <br />
            <asp:Button ID="btnYearDecrease" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="-" /> 
            <asp:TextBox ID="txtYear" runat="server" OnTextChanged="txtYear_TextChanged">50</asp:TextBox> 
            <asp:Button ID="btnYearIncrease" CssClass="btn btn-primary" runat="server" Text="+" OnClick="btnYearIncrease_Click" /> <br />

            <asp:Label ID="Label2" runat="server" Text="Palkka"></asp:Label> <br />
            <asp:Button ID="btnWageDecrease" CssClass="btn btn-primary" runat="server" Text="-" OnClick="btnWageDecrease_Click" />
            <asp:TextBox ID="txtWage" runat="server" OnTextChanged="txtWage_TextChanged">5000</asp:TextBox>
            <asp:Button ID="btnWageIncrease" CssClass="btn btn-primary" runat="server" Text="+" OnClick="btnWageIncrease_Click" />
          </div>
         <div class="col-md-2">
             <asp:Label ID="Label3" runat="server" Text="Eläkerahasi € / kk"></asp:Label> <br />
             <asp:TextBox ID="txtPension" runat="server"></asp:TextBox> <br /> <br /> <br />
             <asp:Button ID="btnLink" CssClass="btn btn-info" runat="server" Text="Infoa" OnClick="btnLink_Click" />
         </div>
          </div>
        
      
       
       </div>
      
        
    
</asp:Content>

