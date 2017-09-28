using OnlinePizza.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        /// <summary>
        /// Checking for username and password
        /// </summary>
        
        protected void loginbtb_Click(object sender, EventArgs e)
        {
            try
            {
                PizzaDbEntities db = new PizzaDbEntities();

                User_Table exist = (from x in db.User_Table where x.UserName == nametxt.Text select x).FirstOrDefault();
                //checking if username is correct
                if (exist != null)
                {
                    //cheching if password is correct
                    if (exist.Password == passwordtxt.Text)
                    {
                        Session["name"] = nametxt.Text;
                        
                        FormsAuthentication.RedirectFromLoginPage(nametxt.Text, true);
                    }
                    else
                    {
                        alertlbl.Text = "Invalid password!!";
                    }


                }
                else
                {
                    alertlbl.Text = "Invalid Username!!";
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("UserError.aspx");
            }
        }
    }
}