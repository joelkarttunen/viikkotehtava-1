<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f6761_LocalDBDemo.aspx.cs" Inherits="f6761_LocalDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paikalliset viideot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Tässä kotimaisia rainoja (oliokokoelma)</h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" OnClick="btnGetMovies_Click" />
        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate>Elokuvan <%#Eval("Title") %> ohjannut <%#Eval("Director") %> vuonna <%#Eval("Year") %></ItemTemplate>
        </asp:DataList>
        
    </div>
    </form>
</body>
</html>