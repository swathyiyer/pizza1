using OnlinePizza.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                PizzaDbEntities db = new PizzaDbEntities();
                Pizza_Table pt = new Pizza_Table();
                if (!IsPostBack)
                {
                    BindPizza();
                }
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        public void BindPizza()
        {


            string constr = ConfigurationManager.ConnectionStrings["PizzaDbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT PizzaId, PizzaName FROM Pizza_Table"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "PizzaName";
                    DropDownList1.DataValueField = "PizzaId";
                    DropDownList1.DataBind();
                    con.Close();
                }
            }

            //Add blank item at index 0.
            DropDownList1.Items.Insert(0, new ListItem("select"));
        }
        protected void id1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int id;
            int.TryParse(DropDownList1.SelectedValue, out id);

            PizzaDbEntities db = new PizzaDbEntities();
            Pizza_Table pt = new Pizza_Table();
            if (id != 0)
            {
                Pizza_Table pt1 = (from a in db.Pizza_Table where a.PizzaId == id select a).FirstOrDefault();
                Session["pizzaname"] = pt1.PizzaName;
                Label1.Text = (pt1.PizzaPrice).ToString();
                Label2.Text = pt1.PizzaDesc;
            }
            else
            {
                alertlbl.Text = "please select pizza name!!!";
                Response.Redirect("Order.aspx");
            }
        }

        protected void addtochatrbtn_Click(object sender, EventArgs e)
        {
            //try
            //{
                PizzaDbEntities db = new PizzaDbEntities();
                Cart_Table ob = new Cart_Table();
                var name = Session["name"].ToString();
                var pname = Session["pizzaname"].ToString();
                User_Table ob1 = (from x in db.User_Table where x.UserName == name select x).FirstOrDefault();
                Pizza_Table ob2 = (from y in db.Pizza_Table where y.PizzaName == pname select y).FirstOrDefault();
                Cart_Table ob3 = (from z in db.Cart_Table where z.Pizzaname == pname && z.Username == name && z.State==1 select z).FirstOrDefault();
                if (ob3 != null)
                {
                    ob3.Quantity = Convert.ToInt32(quantitytxt.Text) + ob3.Quantity;
                    ob3.Rate = Convert.ToDecimal(Label1.Text);
                    ob3.Amount = ob3.Quantity * ob3.Rate;

                }
                else
                {
                    ob.Pizzaname = pname;
                    ob.Username = Session["name"].ToString();
                    ob.PizzaId = ob2.PizzaId;

                    ob.Quantity = Convert.ToInt32(quantitytxt.Text);
                    ob.Rate = Convert.ToDecimal(Label1.Text);
                    ob.Amount = ob.Quantity * ob.Rate;
                    ob.State = 1;

                }
                Session["State"] = ob.State;
                db.Cart_Table.Add(ob);
                db.SaveChanges();
                Response.Redirect("Order.aspx");
            
            //catch (Exception ex)
            //{
            //    //foreach (var entityValidationErrors in ex.EntityValidationErrors)
            //    //{
            //    //    foreach (var validationError in entityValidationErrors.ValidationErrors)
            //    //    {
            //    //        Response.Write("Property: " + validationError.PropertyName + " Error: " + validationError.ErrorMessage);
            //    //    }
            //    //}
            //}
            
        }

        protected void confirmbtb_Click(object sender, EventArgs e)
        {
            Response.Redirect("Confirm.aspx");
        }
    }

}



  