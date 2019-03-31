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
    public partial class ans_script : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }

            l10.Text = "User ID: ";
            l10.Text += Session["user"];

            //Session["student"] = null;
            Session["student"] = t1.Text;

            SqlConnection con = new SqlConnection(CS);
            con.Open();

            //Response.Write(Session["ques"]);
            //Response.Write(Session["ques_ans"]);

            string q = "Select ID, total from " + Session["ques_marks"] + "";
            SqlDataAdapter cmd = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);

            gdv1.DataSource = dt;
            gdv1.DataBind();

            con.Close();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ans_script.aspx");
        }

        protected void b2_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("log_in.aspx");
        }
    }
}