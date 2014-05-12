<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Wicked Easy Recipes</title>
    
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

</head>


<body>
    <form id="form1" runat="server">
    
        <div id="box">
     <h1> Wicked Easy Recipes </h1>
     <h2> Using 5 Ingredients or Less </h2>

            <div id="navi">

        <a href="Default.aspx"> Home </a>
        &nbsp;<a href="recipes.aspx"> View Recipes </a>
        &nbsp;<a href="addrecipe.aspx"> Add New Recipe </a>
          &nbsp; <a href="about.aspx"> About Us</a>
        &nbsp; <a href="contact.aspx"> Contact </a>

            

   </div>
     <div>   <img src="./Images/wicked.jpg" alt="food" title="food" height="250px" width="275" /></div>
        
         <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>
    </form>
</body>
</html>
