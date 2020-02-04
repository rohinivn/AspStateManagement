using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagements
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookies = Request.Cookies["Register"];
            if (cookies != null)
            {
                lblFirstName.Text = cookies["FirstName"];
                lblLastName.Text = cookies["LastName"];
                lblEmail.Text = cookies["Email"];
                lblAge.Text = cookies["Age"];
            }
        }
    }
}