using OnlinePizza.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["name"] != null)
            {

                Label namelbl = (Label)(LoginView1.FindControl("namelbl"));

                namelbl.Text = "Welcome:: " + Convert.ToString(Session["name"]);// displaying username on  header 
                var name= Convert.ToString(Session["name"]); 
                //using (PizzaDbEntities db = new PizzaDbEntities())
                //{

                //    int? listincart = (from a in db.Cart_Table
                //                       where a.Username == name && a.State == 1
                //                       select a.Quantity).Sum();
                //    string count = string.Format("Cart {0}", listincart);
                //    HtmlAnchor b = this.Master.FindControl("cartcount") as HtmlAnchor;
                //    //ListItem cartcount = (ListItem)(LoginView1.FindControl("cartcount"));
                //    b.InnerText = count;
                //}
                ////HtmlGenericControl a = (HtmlGenericControl)this.Master.FindControl("cartcount");
                //a.InnerText = Session["count"].ToString();
            }

        }
        ////protected void Page_PreRender(object sender, EventArgs e)
        ////{
        ////    
        ////}
        protected void logout(object sender, LoginCancelEventArgs e)

        {
            Session.Abandon();
            Session.Clear();
           
            FormsAuthentication.SignOut();
            
        }



    }
}