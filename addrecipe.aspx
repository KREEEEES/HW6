<%@ Page Language="VB" AutoEventWireup="false" CodeFile="addrecipe.aspx.vb" Inherits="addrecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Add New Recipe </title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
<form id="form1" runat="server">
      
    
    
     <div id="box">
        
         <h1> Wicked Easy Recipes </h1>
        <h2> Add a New Recipe </h2>

           
        <div id="navi">
      <a href="Default.aspx"> Home </a>
        &nbsp;<a href="recipes.aspx"> View Recipes </a>
        &nbsp;<a href="addrecipe.aspx"> Add New Recipe </a>
          &nbsp; <a href="about.aspx"> About Us</a>
        &nbsp; <a href="contact.aspx"> Contact </a>

           </div>
      
        
         
         
         <asp:DetailsView ID="DetailsView1" CssClass="grid-view" runat="server" AutoGenerateRows="False" 
            DataKeyNames="rID" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="rName" HeaderText="Name" SortExpression="rName" />
                <asp:BoundField DataField="rCreator" HeaderText="Creator" 
                    SortExpression="rCreator" />
                <asp:BoundField DataField="rIngred1" HeaderText="Ingredient 1" 
                    SortExpression="rIngred1" />
                <asp:BoundField DataField="rIngred2" HeaderText="Ingredient 2" 
                    SortExpression="rIngred2" />
                <asp:BoundField DataField="rIngred3" HeaderText="Ingredient 3" 
                    SortExpression="rIngred3" />
                <asp:BoundField DataField="rIngred4" HeaderText="Ingredient 4" 
                    SortExpression="rIngred4" />
                <asp:BoundField DataField="rIngred5" HeaderText="Ingredient 5" 
                    SortExpression="rIngred5" />
                <asp:BoundField DataField="rPrep" HeaderText="Preparation" 
                    SortExpression="rPrep" />
                <asp:BoundField DataField="rNotes" HeaderText="Notes" SortExpression="rNotes" />
                <asp:CommandField NewText="Add" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [recipe]" 
            DeleteCommand="DELETE FROM [recipe] WHERE [rID] = @rID" 
            InsertCommand="INSERT INTO [recipe] ([rName], [rCreator], [rIngred1], [rIngred2], [rIngred3], [rIngred4], [rIngred5], [rPrep], [rNotes]) VALUES (@rName, @rCreator, @rIngred1, @rIngred2, @rIngred3, @rIngred4, @rIngred5, @rPrep, @rNotes)" 
            UpdateCommand="UPDATE [recipe] SET [rName] = @rName, [rCreator] = @rCreator, [rIngred1] = @rIngred1, [rIngred2] = @rIngred2, [rIngred3] = @rIngred3, [rIngred4] = @rIngred4, [rIngred5] = @rIngred5, [rPrep] = @rPrep, [rNotes] = @rNotes WHERE [rID] = @rID">
            <DeleteParameters>
                <asp:Parameter Name="rID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rName" Type="String" />
                <asp:Parameter Name="rCreator" Type="String" />
                <asp:Parameter Name="rIngred1" Type="String" />
                <asp:Parameter Name="rIngred2" Type="String" />
                <asp:Parameter Name="rIngred3" Type="String" />
                <asp:Parameter Name="rIngred4" Type="String" />
                <asp:Parameter Name="rIngred5" Type="String" />
                <asp:Parameter Name="rPrep" Type="String" />
                <asp:Parameter Name="rNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="rName" Type="String" />
                <asp:Parameter Name="rCreator" Type="String" />
                <asp:Parameter Name="rIngred1" Type="String" />
                <asp:Parameter Name="rIngred2" Type="String" />
                <asp:Parameter Name="rIngred3" Type="String" />
                <asp:Parameter Name="rIngred4" Type="String" />
                <asp:Parameter Name="rIngred5" Type="String" />
                <asp:Parameter Name="rPrep" Type="String" />
                <asp:Parameter Name="rNotes" Type="String" />
                <asp:Parameter Name="rID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
             <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>
         
          </div>
        </form>
      
   
    
   
</body>
</html>
