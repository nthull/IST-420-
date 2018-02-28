using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace TasteAndTell.Pages
{
    public partial class FoodMenu : System.Web.UI.Page
    {
        private String recipeSuggestion;
        private String restFoodSuggestion;
        private String restLocSuggestion;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SearchNewRecipe(object sender, EventArgs e)
        {
            recipeSuggestion = recipeSuggestor.Text.ToString();
            String foodURL = "http://allrecipes.com/search/results/?wt=";
            String foodURLEnd = "&sort=re";
            String foodURLSearch = recipeSuggestion;
            recipeSuggestor.Text = foodURL + foodURLSearch + foodURLEnd;
            Response.Redirect(recipeSuggestor.Text);
        }

        protected void SearchNewRestaurant(object sender, EventArgs e)
        {
            restLocSuggestion = restaurantLocSuggestor.Text.ToString();
            restFoodSuggestion = restaurantFoodSuggestor.Text.ToString();
            String restURL = "https://www.yelp.com/search?find_desc=&find_loc=";
            String appendURLLoc = Regex.Replace(restURL, @"find_loc=", "find_loc=" + restLocSuggestion);
            String appendedURL = Regex.Replace(appendURLLoc, @"find_desc=", "find_desc=" + restFoodSuggestion);
            Response.Redirect(appendedURL);
        }

        protected void breakfastSuggestSearch(object sender, EventArgs e)
        {
            String breakfastMenuURL = "https://www.allrecipes.com/search/results/?wt=breakfast&sort=re";
            Response.Redirect(breakfastMenuURL);
        }

        protected void lunchSuggestSearch(object sender, EventArgs e)
        {
            String lunchMenuURL = "https://www.allrecipes.com/search/results/?wt=lunch&sort=re";
            Response.Redirect(lunchMenuURL);
        }
        protected void saladSuggestSearch(object sender, EventArgs e)
        {
            String saladMenuURL = "https://www.allrecipes.com/search/results/?wt=salad&sort=re";
            Response.Redirect(saladMenuURL);
        }
        protected void dinnerSuggestSearch(object sender, EventArgs e)
        {
            String dinnerMenuURL = "https://www.allrecipes.com/search/results/?wt=dinner&sort=re";
            Response.Redirect(dinnerMenuURL);
        }
        protected void dessertSuggestSearch(object sender, EventArgs e)
        {
            String dessertMenuURL = "https://www.allrecipes.com/search/results/?wt=dessert&sort=re";
            Response.Redirect(dessertMenuURL);
        }
    }
}