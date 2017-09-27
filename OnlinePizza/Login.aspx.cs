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

        //protected void registerbtn_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Register/Register.aspx");
        //}

        protected void loginbtb_Click(object sender, EventArgs e)
        {
            PizzaDbEntities db = new PizzaDbEntities();

            User_Table exist = (from x in db.User_Table where x.UserName == nametxt.Text select x).FirstOrDefault();
            if(exist != null)
            {
                if(exist.Password==passwordtxt.Text)
                {
                    Session["name"] = nametxt.Text;
                    //Response.Redirect("Welcome.aspx");
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
    }
}