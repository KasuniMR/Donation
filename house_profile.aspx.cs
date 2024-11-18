using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace final_project
{
    public partial class house_profile : System.Web.UI.Page
    {
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckIfAuthorExist())
            {
                if (ValidateInput())
                {
                    UpdateProfile();
                }
            }
            else
            {
                Response.Write("<script>alert('User does not exist');</script>");
            }
        }

        // Validate user input before updating
        private bool ValidateInput()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) ||
                string.IsNullOrWhiteSpace(TextBox4.Text) ||
                string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                Response.Write("<script>alert('Please fill out all required fields');</script>");
                return false;
            }

            DateTime dob;
            if (!DateTime.TryParse(TextBox2.Text.Trim(), out dob))
            {
                Response.Write("<script>alert('Invalid Date of Birth');</script>");
                return false;
            }

            return true;
        }

        // Update user profile in the database
        private void UpdateProfile()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    using (SqlCommand cmd = new SqlCommand("UPDATE bbh SET name=@name, DoB=@DoB, contact=@contact, email=@email, state=@state, city=@city, pincode=@pincode, address=@address, password=@password, status=@status WHERE user_id=@user_id", con))
                    {
                        cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoB", Convert.ToDateTime(TextBox2.Text.Trim()));
                        cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                        cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                        cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                        cmd.Parameters.AddWithValue("@address", TextBox8.Text.Trim());
                        cmd.Parameters.AddWithValue("@user_id", TextBox5.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
                        cmd.Parameters.AddWithValue("@status", TextBox9.Text.Trim());

                        cmd.ExecuteNonQuery();
                    }

                    Response.Write("<script>alert('Profile updated successfully');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        // Check if the user exists in the database
        private bool CheckIfAuthorExist()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM bbh WHERE user_id = @user_id", con))
                    {
                        cmd.Parameters.Add("@user_id", SqlDbType.NVarChar, 50).Value = TextBox5.Text.Trim();

                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        return count > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                return false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                Response.Write("<script>alert('Reference number must be filled out.');</script>");
                return;
            }

            ExecuteQuery("DELETE FROM bbh WHERE user_id=@user_id", "Deleted successfully!");
        }

        // Executes a query and handles errors
        private void ExecuteQuery(string query, string successMessage)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@user_id", TextBox5.Text.Trim());
                        cmd.ExecuteNonQuery();
                    }

                    Response.Write("<script>alert('" + successMessage + "');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
