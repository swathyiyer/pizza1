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
                var name = Session["name"].ToString();
                var listincart = from a in db.Cart_Table where a.Username == name select a;
                var total = listincart.AsEnumerable().Sum(o => o.Amount);

                Label2.Text = total.ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        


    }
    }
