using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Examination_System.file
{
    public partial class select_role : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }

            l1.Text = "User ID: ";
            l1.Text += Session["user"];
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("log_in.aspx");
        }
    }
}