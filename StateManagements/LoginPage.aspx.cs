using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagements
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButtonClick(object sender, EventArgs eventArgs)
        {
            string name = txtName.Text;
            string email = txtemail.Text;
            string password = txtPassword.Text;
            UserRepository userRepository = new UserRepository();
            if (userRepository.ValidateLoginCredentials(name, email, password))
            {
                Session["FirstName"] = name;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Invalid Username or Password");
                Response.Redirect("Register.aspx");
            }
        }
    }
}