<%@ Page Title="" Language="C#" MasterPageFile="~/f6761_MasterExample.master" AutoEventWireup="true" CodeFile="f6761_slave.aspx.cs" Inherits="f6761_slave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="lblToday" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="lblSelectedDay" runat="server" Text=""></asp:Label> <br />
    <asp:Label ID="lblDayDifference" runat="server" Text=""></asp:Label> <br />
    <asp:Button ID="btnPrevYear" runat="server" Text="< Vuosi" OnClick="btnPrevYear_Click" />
    <asp:Button ID="btnNextYear" runat="server" Text="Vuosi >" OnClick="btnNextYear_Click" />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="217px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="870px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
</asp:Content>

