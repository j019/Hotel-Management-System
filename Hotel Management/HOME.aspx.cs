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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            conn.Open();

            SqlCommand sc = new SqlCommand("Select roomprice from Room where RoomStatus='Vaccant' And RoomType='" + DropDownList1.SelectedItem.Text + "'", conn);
            SqlDataReader dr;
            dr = sc.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                TextBox3.Text = dr.GetValue(0).ToString();
                TextBox5.Text = "Avaliable";

            }
            else 
            {
            TextBox5.Text = "Not Avaliable";
        }
            conn.Close();

        }
    }
}