namespace StateManagements
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButtonClick(object sender,EventArgs eventArgs)
        {
            User user = new User();
            UserRepository userRepository = new UserRepository();
            user.FirstName = txtFirstName.Text;
            user.LastName = txtLastName.Text;
            user.Password = txtPassword.Text;
            if (rdbMale.Checked)
                user.Gender = rdbMale.Text;
            else if (rdbFemale.Checked)
                user.Gender = rdbFemale.Text;
            else
                user.Gender = rdbOthers.Text;

            user.Age = byte.Parse(txtAge.Text);
            user.Address = txtAddress.Text;
            user.EmailId = txtemail.Text;
            user.City = DropDownListCity.SelectedItem.Text;
            user.State = DropDownListState.SelectedItem.Text;
            user.PinCode = int.Parse(txtPinCode.Text);

            //call the method to execute insert to the database  
            userRepository.ExecuteInsert(user);
            Response.Write("Record was successfully added!");
        }
        
        // Create the cookie object
        //HttpCookie cookie = new HttpCookie("Register");
        // cookie["FirstName"] = txtFirstName.Text;
        // cookie["LastName"] = txtLastName.Text;
        // cookie["Age"] = txtAge.Text;
        // cookie["Email"] = txtemail.Text;
        // if (rdbMale.Checked)
        //     cookie["Gender"] = rdbMale.Text;
        // else
        //     cookie["Gender"] = rdbFemale.Text;
        // Cookie will be persisted for 30 days

        // cookie.Expires = DateTime.Now.AddDays(30);
        // Add the cookie to the client machine

        //Response.Cookies.Add(cookie);
        // Response.Redirect("Display.aspx");

    }
}