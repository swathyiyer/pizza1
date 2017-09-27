using OnlinePizza.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmbtb_Click(object sender, EventArgs e)
        {
            PizzaDbEntities db = new PizzaDbEntities();

            User_Table exist = (from x in db.User_Table where x.UserName == nametxt.Text select x).FirstOrDefault();
            if (exist != null)
            {

                alertlbl.Text = "username already exist";
            }
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
      

    }
}
    