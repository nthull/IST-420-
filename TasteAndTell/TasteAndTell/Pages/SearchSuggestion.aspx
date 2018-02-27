<%@ Page Title="" Language="C#" MasterPageFile="~/Taste.Master" AutoEventWireup="true" CodeBehind="SearchSuggestion.aspx.cs" Inherits="TasteAndTell.Pages.SearchSuggestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Need to lengthen recipeSuggestor textbox--%>
    <asp:TextBox ID="recipeSuggestor" runat="server" >Enter a food in here to find recipes for it!</asp:TextBox>
    <asp:Button ID="recipeSuggestButton" Text="Click for Recipe Suggestions!" OnClick="RecipeSuggestButton_Click" runat="server"/>
    <%-- Need to lengthen both restSuggest textboxes--%>
    <asp:TextBox ID="restaurantFoodSuggestor" Text="Enter a food for restaurant suggestions" runat="server" ></asp:TextBox>
    <asp:TextBox ID="restaurantLocSuggestor" Text="Enter a location for restaurant suggestions" runat="server" ></asp:TextBox>
    <asp:Button ID="restaurantSuggestorButton" Text="Click for Restaurant Suggestions!" OnClick="RestaurantSuggestorButton_Click" runat="server"/>
</asp:Content>
