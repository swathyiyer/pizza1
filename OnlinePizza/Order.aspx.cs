using OnlinePizza.Models;
using System;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;

namespace OnlinePizza
{
    public partial class Order : System.Web.UI.Page
    {
        PizzaDbEntities db = new PizzaDbEntities();
        /// <summary>
        /// Taking the order from the customer
        /// </summary>



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["name"] != null)
                {
                    if (!IsPostBack)
                    {
                        /// <summary>
                        /// To display the drop down from database
                        /// </summary>



                        //Getting the Pizzaname from the Pizza_Table
                        var pt = from a in db.Pizza_Table select new { a.PizzaId, a.PizzaName };
                        DropDownList1.DataSource = pt.ToList();
                        DropDownList1.DataTextField = "PizzaName";
                        DropDownList1.DataValueField = "PizzaId";
                        DropDownList1.DataBind();//Binding to the drop down
                        DropDownList1.Items.Insert(0, new ListItem("select"));//Setting the first item as SELECT
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("UserError.aspx");
            }
        }

        /// <summary>
        /// Getting all the pizza details from database
        /// </summary>


        protected void id1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id;
            try
            {

                int.TryParse(DropDownList1.SelectedValue, out id);//To know the id of selected pizza 
                if (id != 0)
                {
                    //Setting the details to print
                    Pizza_Table pt1 = (from a in db.Pizza_Table where a.PizzaId == id select a).FirstOrDefault();
                    Session["pizzaname"] = pt1.PizzaName;
                    Label1.Text = (pt1.PizzaPrice).ToString();
                    Label2.Text = pt1.PizzaDesc;
                }
                else
                {
                    alertlbl.Text = "please select pizza name!!!";
                    
                }
            }
            catch (Exception )
            {
                Response.Redirect("UserError.aspx");
            }
        }


        /// <summary>
        /// Adding the datas to the cart_table
        /// </summary>


        protected void addtochatrbtn_Click(object sender, EventArgs e)
        {

            var name = Session["name"].ToString();

            int id;


            int.TryParse(DropDownList1.SelectedValue, out id);//To know the id of selected pizza 
            if (id == 0)
            {
                alertlbl.Text = "please select pizza name!!!";
              
            }
            else
            {

                var pname = Session["pizzaname"].ToString();
                Cart_Table ob = new Cart_Table();
                //Getting the details of the pizza
                Pizza_Table ob2 = (from y in db.Pizza_Table where y.PizzaName == pname select y).FirstOrDefault();
                //Getting the details if the pizza was earlier selected
                Cart_Table ob3 = (from z in db.Cart_Table where z.Pizza_Table.PizzaName == pname && z.Username == name && z.State == 1 select z).FirstOrDefault();

                //If pizza name already present
                if (ob3 != null)
                {

                    ob3.Quantity = Convert.ToInt32(quantitytxt.Text) + ob3.Quantity;
                    ob3.Amount = ob3.Quantity * ob2.PizzaPrice;

                }
                //If same pizza does not exist
                else
                {

                    ob.Username = Session["name"].ToString();
                    ob.PizzaId = ob2.PizzaId;
                    ob.Quantity = Convert.ToInt32(quantitytxt.Text);
                    ob.Amount = ob.Quantity * ob2.PizzaPrice;
                    ob.State = 1;
                    db.Cart_Table.Add(ob);
                }

                // adding the details to the cart 
                
                db.SaveChanges();
                Response.Redirect("Confirm.aspx");
            }
        }
    }
}




  