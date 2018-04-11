using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace TasteAndTell.Pages
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string hashPass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "sha1");
            lblPasswordHash.Text = "Your password hash is " + hashPass;
        }
    }
}