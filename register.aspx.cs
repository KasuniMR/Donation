using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_project
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            try
            {
                // Use parameterized query to prevent SQL injection
                using (SqlCommand cmd = new SqlCommand("INSERT INTO bbh (name, DoB, contact, email, state, city, pincode, address, user_id, password, status) VALUES (@name, @DoB, @contact, @email, @state, @city, @pincode, @address, @user_id, @password, @status)", con))
                {
                    // Add parameters with proper data handling
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@DoB", Convert.ToDateTime(TextBox2.Text.Trim())); // Assuming DoB is entered in a valid date format
                    cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@city", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@user_id", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@status", TextBox10.Text.Trim());

                    // Execute the query
                    cmd.ExecuteNonQuery();
                }

                // Clear the input fields after successful insertion
                ClearFields();

                // Optionally, display a success message (can be done with a label control)
                Response.Write("<script>alert('User registered successfully!');</script>");
            }
            catch (Exception ex)
            {
                // Handle exceptions properly
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                // Ensure connection is closed after operation
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

        // Method to clear all text fields after a successful operation
        private void ClearFields()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
    }
    }
