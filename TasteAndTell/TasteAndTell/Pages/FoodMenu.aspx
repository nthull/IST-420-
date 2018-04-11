<%@ Page Title="" Language="C#" Theme="DefaultTheme" MasterPageFile="~/Taste.Master" AutoEventWireup="true" CodeBehind="FoodMenu.aspx.cs" Inherits="TasteAndTell.Pages.FoodMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Select a button below for what meal you want suggestions for!
    <%-- Need to lengthen recipeSuggestor textbox--%>
    <ul>
        <asp:Button ID="breakfastSuggButton" Text="Breakfast" OnClick="breakfastSuggestSearch" runat="server" />
        <asp:Button ID="lunchSuggButton" Text="Lunch" OnClick="lunchSuggestSearch" runat="server" />
        <asp:Button ID="saladSuggButton" Text="Salads" OnClick="saladSuggestSearch" runat="server" />
        <asp:Button ID="dinnerSuggButton" Text="Dinner" OnClick="dinnerSuggestSearch" runat="server" />
        <asp:Button ID="dessertSuggButton" Text="Dessert" OnClick="dessertSuggestSearch" runat="server" />
    </ul>
    Search for a Recipe!
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="recipeSuggestor" runat="server">Enter a food in here to find recipes for it!</asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="recipeSuggestButton" Text="Click for Recipe Suggestions!" OnClick="SearchNewRecipe" runat="server" /></td>
                </tr>
                <%-- Need to lengthen both restSuggest textboxes--%>
                <tr>
                    <td>Search for a Restaurant!</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="restaurantFoodSuggestor" Text="Enter a food for restaurant suggestions" runat="server"></asp:TextBox>
                        <asp:TextBox ID="restaurantLocSuggestor" Text="Enter a location for restaurant suggestions" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="restaurantSuggestorButton" Text="Click for Restaurant Suggestions!" OnClick="SearchNewRestaurant" runat="server" />
                    </td>
                </tr>
            </table>
</asp:Content>
