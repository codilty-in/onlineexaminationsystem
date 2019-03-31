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
    public partial class ans_script1 : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        string CSS;
        float sum = 0;
        public string firstvarriable = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            l1.Text = "User ID: ";
            l1.Text += Session["user"];

            Label5.Text = "Student ID: ";
            Label5.Text += Session["student"];

            CSS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            SqlConnection conn = new SqlConnection(CS);
            conn.Open();


            int j = 0;

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "select * from " + Session["ques_marks"].ToString() + " where ID = '" + Session["student"].ToString() + "' ";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            j = Convert.ToInt32(dt.Rows.Count.ToString());

            if (j == 1)
            {
                string s = "select ID,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z from " + Session["ques_marks"].ToString() + " where ID = " + Session["student"].ToString() + " ";
                SqlDataAdapter cmdth = new SqlDataAdapter(s, conn);
                DataTable dtth = new DataTable();
                cmdth.Fill(dtth);

                gdv3.DataSource = dtth;
                gdv3.DataBind();

                
                for (int i = 1; i < 27; i++)
                {
                    sum += float.Parse(gdv3.Rows[0].Cells[i].Text);
                }

                //Response.Write(sum);
                //Label3.Text = sum.ToString();
                

                SqlCommand cmdt = conn.CreateCommand();

                cmdt.CommandType = CommandType.Text;

                cmdt.CommandText = "update " + Session["ques_marks"].ToString() + " set total = '" + sum.ToString() + "'  where ID = '" + Session["student"].ToString() + "' ";

                cmdt.ExecuteNonQuery();
                conn.Close();
                
                
            }

            else
            {
                Label4.Text = "Inserted Student ID is Wrong!!!";
                Label1.Visible = false;
                d1.Visible = false;
                b1.Visible = false;
                Label2.Visible = false;
                t2.Visible = false;
                b2.Visible = false;
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {

            
            SqlConnection con = new SqlConnection(CS);
             con.Open();

             string q = "Select * from " + Session["ques"].ToString() + " where quesNo = '" + d1.Text + "'";
             SqlDataAdapter cmd = new SqlDataAdapter(q, con);
             DataTable dt = new DataTable();
             cmd.Fill(dt);

             gdv1.DataSource = dt;
             gdv1.DataBind();

             string r = "Select " + d1.Text + " from " + Session["ques_ans"].ToString() + " where ID = '" + Session["student"].ToString() + "'  ";
             SqlDataAdapter cmdt = new SqlDataAdapter(r, con);
             DataTable dtt = new DataTable();
             cmdt.Fill(dtt);

             gdv2.DataSource = dtt;
             gdv2.DataBind();


             /*  


             using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
             {


                 using (SqlCommand command = new SqlCommand("Select " + d1.Text + " from " + Session["ques_ans"].ToString() + " where ID = '" + Session["student"].ToString() + "'  ", connection))
                 {
                     connection.Open();

                     using (SqlDataReader reader = command.ExecuteReader())
                     {
                         while (reader.Read())
                         {
                             //t = Convert.ToInt32(reader[0].ToString());

                             firstvarriable = reader[0].ToString();
                         }
                     }

                     //Label6.Text = firstvarriable;

                     //Literal1.Text = firstvarriable;


                     //connection.Close();

                     //Response.Write(firstVariable);
                 }
             }
            */
            con.Close();
        }

        protected void b2_Click(object sender, EventArgs e)
        {

            if (t2.Text != "")
            {
                // b2.Enabled = false;

                SqlConnection con = new SqlConnection(CS);

                con.Open();

                //float k = (float)Convert.ToInt32(t2.Text);

                SqlCommand cmd = con.CreateCommand();

                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "update " + Session["ques_marks"].ToString() + " set " + d1.Text + " = '" + t2.Text + "' where ID = '" + Session["student"].ToString() + "'  ";

                cmd.ExecuteNonQuery();

                con.Close();
            }


            Response.Redirect("ans_script.aspx");

        }

        protected void b3_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("log_in.aspx");
        }
    }
}