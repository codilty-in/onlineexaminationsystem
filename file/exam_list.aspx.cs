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
    public partial class exam_list1 : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }

            SqlConnection con = new SqlConnection(CS);
            con.Open();

            string q = "Select * from examDetails";
            SqlDataAdapter cmd = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);

            //gdv1.DataSource = dt;
            gdv1.DataBind();

            con.Close();

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