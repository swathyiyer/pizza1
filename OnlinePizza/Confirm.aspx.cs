using OnlinePizza.Models;
using System;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            /// <summary>
            /// Displaying the datas from the cart 
            /// </summary>
            

                if (Session != null)
                {

                calculation();
                 
                   
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
        public void calculation()
        {
            PizzaDbEntities db = new PizzaDbEntities();
            // Response.Redirect(Request.RawUrl);
            Label2.Text = 0.ToString();
            var name = Session["name"].ToString();
            var listincart = from a in db.Cart_Table
                             where a.Username == name && a.State == 1
                             select a;
            //calculating the total price
            var total = listincart.AsEnumerable().Sum(obj => obj.Amount);
            if (total == 0)
            {
                Response.Redirect("Empty.aspx");
            }
            Label2.Text = total.ToString();
        }
           
        
        /// <summary>
        /// Updating the delivered orders
        /// </summary>

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            
                PizzaDbEntities db = new PizzaDbEntities();
                var name = Session["name"].ToString();
                Cart_Table c = new Cart_Table();
                var ob1 = (from a in db.Cart_Table where a.State == 1 && a.Username == name select a);
                foreach (var item in ob1)
                {
                    item.State = 0;
                }

               db.SaveChanges();
               Response.Redirect("Final.aspx");
        }
     
    }
    }


