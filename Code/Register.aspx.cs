using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Nishu
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\AKSHAY\Documents\onlineDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            string fn = fname.Text;
            string ln = lname.Text;
            string u = usr.Text;
            string em = email.Text;
            string pass = passwd.Text;
            string cpass = cpasswd.Text;


            string query = "insert into register values('" + fn + "','" + ln + "','" + u + "','" + em + "','" + pass + "','" + cpass + "') ";
            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Label1.Text = "Registered Succesfully";


        }

        protected void reset_Click(object sender, EventArgs e)
        {

        }

        protected void log_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void del_Click1(object sender, EventArgs e)
        {
            string que = "delete from register where Username='" + usr.Text + "'";
            cmd = new SqlCommand(que, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Label2.Text = "Deleted Succesfully";
        }

        protected void up_Click(object sender, EventArgs e)
        {

        }
    }
}