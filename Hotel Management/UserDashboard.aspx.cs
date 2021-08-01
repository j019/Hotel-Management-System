using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HM
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChooseRoom");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
                GridView1.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;

            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            con.Open();
            SqlCommand sc = new SqlCommand("Delete from Booking where BookingID ='" +TextBox1.Text+"'",con);
            sc.ExecuteNonQuery();
            SqlCommand sc1 = new SqlCommand("Update Room set RoomStatus='Vaccant' where RoomType='" + TextBox4.Text + "' and RoomNumber='" + TextBox5.Text + "'",con);
            sc1.ExecuteNonQuery();
            con.Close();
            Page.Response.Redirect(Page.Request.RawUrl);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow gvr = (GridViewRow)GridView1.Rows[e.RowIndex];
            string id = String.Empty;
            Label lbl = (gvr.FindControl("Rno") as Label);
            Response.Write(lbl.Text);

        if (lbl != null)
            {
                id=lbl.Text;
                
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}