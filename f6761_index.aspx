﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f6761_index.aspx.cs" Inherits="f6761_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tehtäviä</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tehtava1.aspx">Viikkotehtävän 0 ratkaisu</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/f6761_DBDemo.aspx">DB Demo</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/f6761_LocalDBDemo.aspx">Local DB Demo</asp:HyperLink>
    </div>
    </form>
</body>
</html>
