using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace StateManagements
{
    public class UserRepository
    {
        private string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }
        internal void ExecuteInsert(User user)
        {
            using (SqlConnection sqlConnection = new SqlConnection(GetConnectionString()))
            {
                string sql = @"INSERT INTO UserDetails  
                             (FirstName,LastName,Gender,Age,Address,City,State,PinCode,Email,Password)   
                              VALUES  
                             (@FirstName,@LastName,@Gender,@Age,@Address,@City,@State,@PinCode,@Email,@Password)";

                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlCommand.Parameters.AddWithValue("@FirstName", user.FirstName);
                    sqlCommand.Parameters.AddWithValue("@LastName", user.LastName);
                    sqlCommand.Parameters.AddWithValue("@Gender", user.Gender);
                    sqlCommand.Parameters.AddWithValue("@Age", user.Age);
                    sqlCommand.Parameters.AddWithValue("@Address", user.Address);
                    sqlCommand.Parameters.AddWithValue("@City", user.City);
                    sqlCommand.Parameters.AddWithValue("@State", user.State);
                    sqlCommand.Parameters.AddWithValue("@PinCode", user.PinCode);
                    sqlCommand.Parameters.AddWithValue("@Email", user.EmailId);
                    sqlCommand.Parameters.AddWithValue("@Password", user.Password);
                    sqlConnection.Open();
                    sqlCommand.CommandType = CommandType.Text;
                    sqlCommand.ExecuteNonQuery();
                }
            }
        }
        internal bool ValidateLoginCredentials(string name,string email,string password)
        {
            using (SqlConnection sqlConnection = new SqlConnection(GetConnectionString()))
            {
                string sql = "Select Email,Password,FirstName From UserDetails Where Email=@Email and Password=@Password And FirstName=@FirstName";
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlCommand.Parameters.AddWithValue("@FirstName",name);
                    sqlCommand.Parameters.AddWithValue("@Password", password);
                    sqlCommand.Parameters.AddWithValue("@Email", email);
                    sqlConnection.Open();
                    SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                    if (sqlDataReader.HasRows)
                        return true;
                    else
                        return false;
                }
            }
        }
    }
}