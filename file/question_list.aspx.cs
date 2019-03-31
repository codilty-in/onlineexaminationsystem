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
    public partial class question_list : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        int t;

        string firstvarriable = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("SELECT timeDuration FROM examDetails where examTag = '" + Session["ques"].ToString() + "' ", connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            t = Convert.ToInt32(reader[0].ToString());

                            //secondVariable = reader[1].ToString();
                        }
                    }

                    //connection.Close();

                    //Response.Write(firstVariable);
                }
            }
            l10.Text = "User ID: ";
            l10.Text += Session["user"];

            Label5.Text = "If you once logged out from this page, you can never join this exam.";

            if (Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }

            if (Session["Timer"] == null)
            {
                Session["Timer"] = DateTime.Now.AddMinutes(t).ToString();
            }

            SqlConnection con = new SqlConnection(CS);
            con.Open();

            //Response.Write(Session["ques"]);
            //Response.Write(Session["ques_ans"]);

            string q = "Select * from "+Session["ques"]+"";
            SqlDataAdapter cmd = new SqlDataAdapter(q, con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);

            gdv1.DataSource = dt;
            gdv1.DataBind();

            con.Close();  


            
        }
        protected void b2_Click(object sender, EventArgs e)
        {

            if (d1.Text != "Select A Question Number")
            {

                /*
                SqlConnection con = new SqlConnection(CS);
                con.Open();

                //Response.Write(Session["ques"]);
                //Response.Write(Session["ques_ans"]);

                string q = "Select " + d1.Text + " from " + Session["ques_ans"].ToString() + "  where  ID = '" + Session["user"].ToString() + "' ";
                SqlDataAdapter cmd = new SqlDataAdapter(q, con);
                DataTable dt = new DataTable();
                cmd.Fill(dt);

                gdv2.DataSource = dt;
                gdv2.DataBind();

                con.Close();
                */

                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
                {

                    using (SqlCommand command = new SqlCommand("Select " + d1.Text + " from " + Session["ques_ans"].ToString() + "  where  ID = '" + Session["user"].ToString() + "' ", connection))
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

                        Label4.Text = firstvarriable;

                        //Literal1.Text = firstvarriable;


                        //connection.Close();

                        //Response.Write(firstVariable);
                    }
                }
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            
            if (d1.Text == "" || t1.Text == "" || d1.Text == "Select A Question Number")
            {
                Label3.Text = "Please Insert Question No & Answer Properly!!!";
            }

            else
            {
            
                SqlConnection con = new SqlConnection(CS);
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "update " + Session["ques_ans"].ToString() + " set " + d1.Text + " = '" + t1.Text + "' where  ID = '" + Session["user"].ToString() + "'  ";
                cmd.ExecuteNonQuery();

                con.Close();

                Response.Redirect("question_list.aspx");
            }

            
        }



        protected void timerTest_tick(object sen, EventArgs e)
        {
            if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
            {
                litMsg.Text = "Time left : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString() + " Minute " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString() + " Seconds ";
            }
            else 
            {
                if(t1.Text != "" && d1.Text != "")
                {
                    SqlConnection con = new SqlConnection(CS);
                    con.Open();

                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;

                    cmd.CommandText = "update " + Session["ques_ans"].ToString() + " set " + d1.Text + " = '" + t1.Text + "' where  ID = '" + Session["user"].ToString() + "'  ";
                    cmd.ExecuteNonQuery();

                    con.Close();
                }

                litMsg.Text = "Time Expired...!!!";
                Session["user"] = null;
                Response.Redirect("log_in.aspx");
                //Response.Redirect("logout.aspx");
            }
        }

        
    }
}