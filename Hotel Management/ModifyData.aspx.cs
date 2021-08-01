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
    public partial class ModifyData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Avalibale Rooms");
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            cn.Open();
            SqlCommand sc = new SqlCommand("Select RoomNumber from Room where RoomStatus='Vaccant' And RoomType='" + DropDownList1.SelectedItem.Text + "'", cn);
            SqlDataReader dr;
            dr = sc.ExecuteReader();
            String p;
            while (dr.Read())
            {

                p = dr.GetValue(0).ToString();
                DropDownList2.Items.Add(p);
            }
            cn.Close();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            cn.Open();
            SqlCommand sc = new SqlCommand("Select RoomPrice,RoomCapacity,RoomStatus,RoomDescription from Room where RoomType='" + DropDownList1.SelectedItem.Text + "' and RoomNumber=" + DropDownList2.SelectedItem.Text, cn);
            SqlDataReader dr;
            dr = sc.ExecuteReader();
            while (dr.Read())
            {

                TextBox3.Text = dr.GetValue(0).ToString();
                TextBox4.Text = dr.GetValue(1).ToString();
                TextBox6.Text = dr.GetValue(2).ToString();
                TextBox7.Text = dr.GetValue(3).ToString();

            }
            cn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.RawUrl);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            con.Open();
            SqlCommand sc1 = new SqlCommand("Update Room set RoomPrice='"+ TextBox3.Text+"',RoomCapacity='"+TextBox4.Text+ "',RoomStatus='" + TextBox6.Text + "' ,RoomDescription='" + TextBox7.Text + "' where RoomType='" + DropDownList1.Text + "' and RoomNumber='" + Convert.ToInt32( DropDownList2.Text) + "'", con);
            sc1.ExecuteNonQuery();
            con.Close();
            Page.Response.Redirect(Page.Request.RawUrl);
        }
    }
}
