using System;
using System.Web;
namespace StateManagements
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButtonClick(object sender,EventArgs eventArgs)
        {
            // Create the cookie object
            HttpCookie cookie = new HttpCookie("Register");
            cookie["FirstName"] = txtFirstName.Text;
            cookie["LastName"] = txtLastName.Text;
            cookie["Age"] = txtAge.Text;
            cookie["Email"] = txtemail.Text;
            // Cookie will be persisted for 30 days
            // cookie.Expires = DateTime.Now.AddDays(30);
            // Add the cookie to the client machine
            Response.Cookies.Add(cookie);

            Response.Redirect("Display.aspx");
        }
    }
}