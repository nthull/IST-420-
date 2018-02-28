using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace TasteAndTell.Pages
{
    public partial class SearchSuggestion : System.Web.UI.Page
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
            String appendedURL = Regex.Replace(restURL, @"find_loc=", "find_loc=" + restLocSuggestion);
            appendedURL = Regex.Replace(restURL, @"find_desc=", "find_desc=" + restFoodSuggestion);
            Response.Redirect(appendedURL);
        }
    }
}