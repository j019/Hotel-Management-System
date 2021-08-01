using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HM
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            cnn.Open();
            String S = "";
            String Fname = TextBox1.Text;
            String Lname = TextBox2.Text;
            String Add = TextBox3.Text;
            String CNo = TextBox4.Text;
            String Email = TextBox5.Text;
            String Pass = TextBox6.Text;
            S = "Insert into User1 values('" + Fname +"','" + Lname + "','" + Add + "','" + CNo + "','" + Email + "','" + Email + "','" + Pass + "')";
            SqlCommand cmd = new SqlCommand(S,cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();

            Response.Redirect("SubmitPage");

        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Page.Response.Redirect(Page.Request.RawUrl);
        }
    }
}