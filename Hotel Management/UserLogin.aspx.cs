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
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=DESKTOP-TJ3T8JI;Initial Catalog=HM;Integrated Security=True");
            cn.Open();
            SqlCommand sc = new SqlCommand("Select userid,password,firstname,lastname from USer1 where UserID='" + TextBox1.Text +"'", cn);
            SqlDataReader dr;
            dr = sc.ExecuteReader();
            String p,fn,ln;
            if(dr.HasRows)
            {
                dr.Read();
                p = dr.GetValue(1).ToString();
                fn = dr.GetValue(2).ToString();
                ln=dr.GetValue(3).ToString();
                Session["UserName"]=TextBox1.Text;
                if (TextBox2.Text ==p)
                {
                   // Session["UserName"] = TextBox1.Text; ​
                    Response.Redirect("UserDashboard?FirstName="+fn);
                }
                else
                {
                    Session["UserName"]=null;
                    Response.Write("INVALID PASSWORD");
                }
            }
            else
            {
                Response.Write("INVALID USER ID");
                Session["UserName"]=null;
            }
        }
       
    }
}