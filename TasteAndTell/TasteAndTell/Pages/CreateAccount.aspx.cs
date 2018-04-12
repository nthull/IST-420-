using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using TasteAndTell.App_Code;
using System.Web.Script.Serialization;
using System.IO;
using TasteAndTell.ServiceReference1;

namespace TasteAndTell.Pages
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Hash the user's passsword for storage
            string hashPass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "sha1");

            //Create new user object
            User newUser = new User();
            newUser.Username = txtUsername.Text;
            newUser.Email = txtEmail.Text;
            newUser.Password = hashPass;
            newUser.DateJoined = DateTime.Now.ToString();

            //Convert to JSON to send to the web server
            JavaScriptSerializer jss = new JavaScriptSerializer();
            string newUserJSON = jss.Serialize(newUser);
            lblJSON.Text = newUserJSON;
        }
    }
}