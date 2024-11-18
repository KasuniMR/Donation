using System;
using System.Data;
using System.Data.SqlClient;

namespace final_project
{
    public partial class reference : System.Web.UI.Page
    {
        // Database connection string
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Button1 Click: Add record
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!ValidateFields()) return; // Validate input fields

            ExecuteQuery("INSERT INTO ref (ref_no, name) VALUES (@ref_no, @name)", "Registered successfully!");
        }

        // Button2 Click: Update record
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!ValidateFields()) return; // Validate input fields

            ExecuteQuery("UPDATE ref SET name=@name WHERE ref_no=@ref_no", "Updated successfully!");
        }

        // Button3 Click: Delete record
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                Response.Write("<script>alert('Reference number must be filled out.');</script>");
                return;
            }

            ExecuteQuery("DELETE FROM ref WHERE ref_no=@ref_no", "Deleted successfully!");
        }

        // Method to execute SQL queries
        private void ExecuteQuery(string query, string successMessage)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters for the query
                        cmd.Parameters.Add(new SqlParameter("@ref_no", SqlDbType.NVarChar) { Value = TextBox1.Text.Trim() });

                        // Only add the 'name' parameter if it's relevant to the query
                        if (query.Contains("@name"))
                        {
                            cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.NVarChar) { Value = TextBox2.Text.Trim() });
                        }

                        cmd.ExecuteNonQuery(); // Execute the command
                    }

                    clear();
                    Response.Write($"<script>alert('{successMessage}');</script>");
                }
                catch (Exception ex)
                {
                    // Provide a more descriptive error message for debugging
                    Response.Write($"<script>alert('Operation failed: {ex.Message}');</script>");
                }
            }

            GridView1.DataBind(); // Refresh GridView
        }

        // Validate input fields for adding and updating records
        private bool ValidateFields()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                Response.Write("<script>alert('All fields must be filled out.');</script>");
                return false;
            }
            return true;
        }

        // Clear text fields after operation
        private void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
