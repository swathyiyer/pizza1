using OnlinePizza.Models;
using System;
using System.Linq;
using System.Web.Security;
using System.Data;

namespace OnlinePizza
{
    public partial class Welcome : System.Web.UI.Page
    {
    

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["name"] != null)
            {
                    //Displaying the Details of the User
                    PizzaDbEntities db = new PizzaDbEntities();
                    nametxt.Text = Session["name"].ToString();
                    User_Table exist = (from x in db.User_Table
                                        where x.UserName == nametxt.Text
                                        select x).FirstOrDefault();
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