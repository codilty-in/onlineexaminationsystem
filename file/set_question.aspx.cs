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
    public partial class set_question : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }

            //Response.Write("Your Exam Tag is : ");
            //Label4.Text = "Your Exam Tag is : "+Session["Ques"].ToString()";

            l10.Text = "User ID: ";
            l10.Text += Session["user"];

            SqlConnection con = new SqlConnection(CS);
            con.Open();

            string q = "Select * from "+Session["ques"]+"";
            SqlDataAdapter cmd = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);

            gdv1.DataSource = dt;
            gdv1.DataBind();

            con.Close();

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            con.Open();

            int i = 0;

            SqlCommand cmdt = con.CreateCommand();
            cmdt.CommandType = CommandType.Text;

            cmdt.CommandText = "select quesNo from "+Session["ques"]+" where quesNo = '"+d1.Text+"' ";
            cmdt.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmdt);
            da.Fill(dt);

            i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i == 0)
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "insert into " + Session["ques"].ToString() + " (quesNo, ques, marks) values ('" + d1.Text + "', '" + t1.Text + "', '" + t2.Text + "')  ";
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("set_question.aspx");
            }
            else
            {
                //Response.Write("This Question No is already used. Please Select the Question Number Properly...!");
                l4.Text = "This Question No is already used. Please Select the Question No Properly...!";
            }
        }

        protected void b2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = " update "+Session["ques"]+" set ques = '"+t1.Text+"' , marks = '"+t2.Text+ "' where quesNo = '" + d1.Text + "'";
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("set_question.aspx");
        }
    }
}