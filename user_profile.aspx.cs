using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace final_project
{
    public partial class user_profile : System.Web.UI.Page
    {
        // Connection string (ensure it points to the correct database)
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // You can include code here to initialize the page if needed
        }

        protected void button1_Click(object sender, EventArgs e)
        {

            //update
           
            if (CheckIfAuthorExist())
            {
                update();
            }
            else
            {
                Response.Write("<script>alert('User does not exist');</script>");
            }

        }


        void update()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE users SET name=@name,DoB=@DoB,contact=@contact,email=@email,state=@state,city=@city,pincode=@pincode,address=@address,password=@password,status=@status WHERE user_id=@user_id", con);
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@DoB", Convert.ToDateTime(TextBox2.Text.Trim())); // Assuming DoB is entered in a valid date format
                    cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@user_id", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@status", TextBox9.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('profile updated successfully');</script>");
                   
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }



        // Method to check if the user (author) exists in the database
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

                    // Parameterized query to prevent SQL injection
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id = @user_id", con))
                    {
                        // Explicitly define parameter types and lengths
                        cmd.Parameters.Add("@user_id", SqlDbType.NVarChar, 50).Value = TextBox5.Text.Trim();

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // Check if at least one row exists
                        return dt.Rows.Count >= 1;
                    }
                }
            }
            catch (Exception ex)
            {
                // Display error message to the user
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                return false;
            }
        }
    }
}
