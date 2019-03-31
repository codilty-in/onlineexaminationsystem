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
    public partial class log_in : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        int i;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Redirect("select_role.aspx");
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(CS);
            con.Open();

            i = 0;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "select * from registration where userName = '"+t1.Text+"' and ID = '" + t2.Text+"' and password = '"+t3.Text+"' ";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i == 1)
            {
                Session["user"] = t2.Text;
                Response.Redirect("select_role.aspx");
            }
            else
            {
                l1.Text = "Entered Information is not valid. Try again!!!";
            }

            con.Close();

        }

        protected void b2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_registration.aspx");
        }
    }
}