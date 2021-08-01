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
    public partial class BookNow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label9.Text = Request.QueryString["RNo"];
                Label10.Text = Request.QueryString["RPrice"];
                Label11.Text = Request.QueryString["RCapacity"];
                Label12.Text = Request.QueryString["RType"];
                TextBox1.Text = Request.QueryString["RDescription"];
                Label23.Text = Request.QueryString["RCheckIn"];
                Label24.Text = Request.QueryString["RCheckOut"];
        }
            

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            con.Open();
            String St = "";

            String CheckIn = Request.QueryString["RCheckIn"];
            String CheckOut = Request.QueryString["RCheckOut"];
            String RType = Request.QueryString["RType"];
            String RoomNo = Request.QueryString["RNo"];
            String UName = Session["UserName"].ToString();

            St = "Insert into Booking values('"+UName+"','" + CheckIn + "','" + CheckOut + "','" + RType + "','" + RoomNo + "')";
            SqlCommand cmd = new SqlCommand(St, con);
            cmd.ExecuteNonQuery();
            String Stt="Update Room set RoomStatus='Occupied' where RoomType='"+RType+"'and RoomNumber='"+RoomNo+"'";
            SqlCommand cmd1 = new SqlCommand(Stt, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ConfirmPage");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}