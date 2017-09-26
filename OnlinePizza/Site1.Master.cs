using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void logout(object sender, LoginCancelEventArgs e)

        {
            Session.Abandon();
            Session.Clear();
           
            FormsAuthentication.SignOut();
            
        }



    }
}