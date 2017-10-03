using OnlinePizza.Models;
using System;
using System.Linq;
using System.Web.Security;
using System.Data;
using System.Net.Mail;

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
                    string name = Session["name"].ToString();
                    //Fetching the details
                    User_Table exist = (from x in db.User_Table
                                        where x.UserName == name
                                        select x).FirstOrDefault();
                    phone.Text = exist.Phono;
                    address.Text = exist.Address;
                 
                }
                else
                {
                    FormsAuthentication.SignOut();
                }
            }
            catch(Exception )
            {
                Response.Redirect("UserError.aspx");
            }

        }

        protected void sendmail(object sender, EventArgs e)
        
        {
            try
            {
                string name = Session["name"].ToString();
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add("pizzaonline2017@gmail.com");
                mailMessage.From = new MailAddress("pizzaonline2017@gmail.com");
                mailMessage.Subject = "feedback from" + name ;
                mailMessage.Body = feedbacktxt.Text;
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("pizzaonline2017@gmail.com", "pizzaonline2017swathy");
                smtpClient.Port = 587;
                smtpClient.Send(mailMessage);
                Response.Write("E-mail sent!");
            }
            catch (Exception ex)
            {
                Response.Write("Could not send the e-mail - error: " + ex.Message);
            }
        }
    }
}