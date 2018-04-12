using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web.Script.Serialization;
using TasteService.App_Code;

namespace TasteService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        public void GetNewUser(string newUser)
        {
            JavaScriptSerializer jss = new JavaScriptSerializer();
            User newUserAdd = jss.Deserialize<User>(newUser);
            string dateJoined = newUserAdd.DateJoined;
            string email = newUserAdd.Email;
            string pass = newUserAdd.Password;
            string username = newUserAdd.Username;
            Console.Write(username);
            return;
        }
        
    }
}
