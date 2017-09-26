using OnlinePizza.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session != null)
            {
                PizzaDbEntities db = new PizzaDbEntities();
                Label2.Text = 0.ToString();
                var name = Session["name"].ToString();
                var listincart = from a in db.Cart_Table where a.Username == name && a.State == 1 select a;
                var total = listincart.AsEnumerable().Sum(o => o.Amount);

                Label2.Text = total.ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void confirmbtn_Click(object sender, EventArgs e)
        {
            PizzaDbEntities db = new PizzaDbEntities();
            var name = Session["name"].ToString();
            Cart_Table c = new Cart_Table();
            var ob1 = (from a in db.Cart_Table where a.State == 1  select a);
           foreach (var item in ob1)
            {
                item.State = 0;
            }
            
            db.SaveChanges();
            Response.Redirect("Final.aspx");
        }
    }
    }
