<%@ Page Language="VB" AutoEventWireup="false" CodeFile="recipes.aspx.vb" Inherits="recipes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
 
    
        <div id="box">
    <h1> Wicked Easy Recipes </h1>
        <h2> Our Recipes </h2>
            <div id="navi">

        <a href="Default.aspx"> Home </a>
        &nbsp;<a href="recipes.aspx"> View Recipes </a>
        &nbsp;<a href="addrecipe.aspx"> Add New Recipe </a>
       &nbsp; <a href="about.aspx"> About Us</a>
        &nbsp; <a href="contact.aspx"> Contact </a>
           
    </div>
    
        <asp:GridView ID="GridView1" CssClass="grid-view" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="rID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="rName" HeaderText="Name" SortExpression="rName" />
                <asp:BoundField DataField="rCreator" HeaderText="Creator" 
                    SortExpression="rCreator" />
                <asp:HyperLinkField DataNavigateUrlFields="rID" 
                    DataNavigateUrlFormatString="recipedetails.aspx?rID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
        
                 <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [recipe]"></asp:SqlDataSource>
   
    </div>
    </form>
</body>
</html>
