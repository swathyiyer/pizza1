using OnlinePizza.Models;
using System;
using System.Linq;
using System.Web.Security;

using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Policy;

namespace OnlinePizza
{
    public partial class Welcome : System.Web.UI.Page
    {
    

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["name"] != null)
            {


                PizzaDbEntities db = new PizzaDbEntities();
                    nametxt.Text = Session["name"].ToString();
                    User_Table exist = (from x in db.User_Table where x.UserName == nametxt.Text select x).FirstOrDefault();

                    Label4.Text = exist.Phono;
                    Label6.Text = exist.Address;
                
                
            }
            else
            {
                FormsAuthentication.SignOut();
            }
        }
    }
}