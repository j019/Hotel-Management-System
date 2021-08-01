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
    public partial class RoomDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("DetailsRoom");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.RawUrl);
        }
    }
}