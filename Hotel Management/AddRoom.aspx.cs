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
    public partial class AddRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            con.Open();
            String St = "";
            String RNumber = TextBox1.Text;
            String RPrice = TextBox2.Text;
            String RCapacity = TextBox3.Text;
            String RType = TextBox4.Text;
            String RStatus = TextBox5.Text;
            String RDescription = TextBox6.Text;
            St = "Insert into Room values('" + RNumber + "','" + RPrice + "','" + RCapacity + "','" + RType + "','" + RStatus + "','" + RDescription+"')";
            SqlCommand cmd = new SqlCommand(St, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.RawUrl);
        }
    }
}