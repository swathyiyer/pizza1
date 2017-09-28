using OnlinePizza.Models;
using System;
using System.Linq;
using System.Web.Security;
using System.Data;

namespace OnlinePizza
{
    public partial class Welcome : System.Web.UI.Page
    {
             /// <summary>
             /// Displaying the details of the user
             /// </summary>
            
  

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["name"] != null)
                {

                    PizzaDbEntities db = new PizzaDbEntities();
                    nametxt.Text = Session["name"].ToString();
                    //Fetching the details
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
            catch(Exception ex)
            {
                Response.Redirect("UserError.aspx");
            }
        }
    }
}