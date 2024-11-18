using System;
using System.Web.UI;

namespace final_project
{
    public partial class admin_log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get values from TextBox1 and TextBox2
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string userId = TextBox1.Text;
            string password = TextBox2.Text;

            // Check if the entered user_id and password are correct
            if (userId == "abc" && password == "123")
            {
                // Redirect to homepage.aspx
                Response.Redirect("reference.aspx");
            }
            else
            {
                // Show an error message if the credentials are incorrect
                LabelError.Text = "Invalid Department ID or password. Please try again.";
            }
        }
    }
}
