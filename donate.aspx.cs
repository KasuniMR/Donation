using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace final_project
{
    public partial class donate : System.Web.UI.Page
    {
        // Connection string to the database
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Open the connection if it's closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // Using parameterized queries to prevent SQL injection
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id = @user_id", con))
                {
                    cmd.Parameters.AddWithValue("@user_id", TextBox2.Text.Trim());

                    // Execute the query and check if any user exists
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            // User exists, proceed with the donation insert
                            dr.Close();  // Close reader before running a new command

                            using (SqlCommand insertCmd = new SqlCommand("INSERT INTO don (member_id, elder_id, name, contact, date, things) VALUES (@member_id, @elder_id, @name, @contact, @date, @things)", con))
                            {
                                // Add parameters to insert query
                                insertCmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                                insertCmd.Parameters.AddWithValue("@elder_id", TextBox1.Text.Trim());
                                insertCmd.Parameters.AddWithValue("@name", TextBox3.Text.Trim());
                                insertCmd.Parameters.AddWithValue("@contact", TextBox4.Text.Trim());
                                insertCmd.Parameters.AddWithValue("@date", TextBox5.Text.Trim());
                                insertCmd.Parameters.AddWithValue("@things", TextBox6.Text.Trim());

                                // Execute insert query
                                insertCmd.ExecuteNonQuery();

                                // Clear input fields after success
                                ClearFields();

                                // Display success message
                                Response.Write("<script>alert('Donation registered successfully!');</script>");
                            }
                        }
                        else
                        {
                            // If no user found
                            Response.Write("<script>alert('please be a member');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any errors
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
            finally
            {
                // Ensure the connection is closed after the operation
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        // Method to clear input fields
        private void ClearFields()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
        }
    }
}
