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
    public partial class reg_log : System.Web.UI.Page
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

            // Using parameterized queries to prevent SQL injection
            SqlCommand cmd = new SqlCommand("SELECT * FROM ref WHERE ref_no = @ref_no AND name = @name", con);
            cmd.Parameters.AddWithValue("@ref_no", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@name", TextBox2.Text.Trim());

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // Redirect to homepage.aspx if credentials match
                    Response.Redirect("register.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }
        }
    }
}