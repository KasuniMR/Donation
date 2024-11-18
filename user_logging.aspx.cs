using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_project
{
    public partial class user_logging : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Donation.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_sign_up.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            // Using parameterized queries to prevent SQL injection
            SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id = @user_id AND password = @password", con);
            cmd.Parameters.AddWithValue("@user_id", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // Redirect to homepage.aspx if credentials match
                    Response.Redirect("user_profile.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }
        }
    }
           
        }
    
