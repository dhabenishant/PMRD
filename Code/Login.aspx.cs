using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Nishu
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\AKSHAY\Documents\onlineDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        }

        protected void log_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\AKSHAY\Documents\onlineDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            con.Open();
            string checkuser = "select count(*) from register where Username='" + uname.Text + "'";

            SqlCommand com = new SqlCommand("select count(*) from register where Username='" + uname.Text + "'", con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                con.Open();
                string checkpass = "select Password from register where Username='" + uname.Text + "'";
                SqlCommand passcom = new SqlCommand(checkpass, con);
                string password = passcom.ExecuteScalar().ToString().Replace(" ", "");

                if (password == TextBox1.Text)
                {
                    Response.Redirect("~/HomePage.aspx");
                }

                else
                {
                    Label3.Text = "Invalid Password";
                }
            }
            else
            {
                Label2.Text = "Invalid User";
            }


         
        }
    }
}