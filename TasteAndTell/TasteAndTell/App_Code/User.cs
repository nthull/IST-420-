using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TasteAndTell.App_Code
{
    public class User
    {
        //New User object
        //Username is user's input username, used as a primary key
        //Email is their email address
        //Password is the user's hashed password. Hashed using SHA1

        public string Username { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string DateJoined { get; set; }
    }
}