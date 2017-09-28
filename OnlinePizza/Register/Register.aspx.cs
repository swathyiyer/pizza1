using OnlinePizza.Models;
using System;
using System.Linq;


namespace OnlinePizza
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Registering the new customer
        /// </summary>

        protected void confirmbtb_Click(object sender, EventArgs e)
        {
            try
            {

                PizzaDbEntities db = new PizzaDbEntities();
                //Checking if user already exists
                User_Table exist = (from x in db.User_Table
                                    where x.UserName == nametxt.Text
                                    select x).FirstOrDefault();

                if (exist != null)
                {

                    alertlbl.Text = "username already exist";

                }
                //Getting the user information from the user
                else
                {
                    User_Table ob = new User_Table();
                    ob.UserName = nametxt.Text;
                    ob.Phono = phonotxt.Text;
                    ob.Password = passwordtxt.Text;
                    ob.Address = addtext.Text;
                    db.User_Table.Add(ob);
                    db.SaveChanges();
                    Response.Redirect("Login.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("UserError.aspx");
            }
        }
    }
}
    