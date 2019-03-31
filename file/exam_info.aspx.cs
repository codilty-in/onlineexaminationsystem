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
    public partial class exam_info : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        string firstVariable = string.Empty;
        string secondVariable = string.Empty;
        string thirdVariable = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Request.QueryString["examTag"]);
            //Response.Write(Request.QueryString["examTag"]+"_answer");

            //Label1.Text = Request.QueryString["examTag"];
            //Label2.Text = Request.QueryString["examTag"] + "_answer";

            if (Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }

            l10.Text = "User ID: ";
            l10.Text += Session["user"];
            

            
            Session["ques"] = Request.QueryString["examTag"].ToString();
            Session["ques_ans"] = Request.QueryString["examTag"] + "_answer".ToString();
            Session["ques_marks"] = Request.QueryString["examTag"] + "_marks".ToString();

            //Response.Redirect(firstVariable);

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("SELECT organizedBy FROM examDetails where examTag = '" + Session["ques"].ToString() + "' ", connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            firstVariable = reader[0].ToString();

                            //secondVariable = reader[1].ToString();
                        }
                    }
                    
                    if (firstVariable == Session["user"].ToString())
                    {
                        Label1.Visible = false;
                        Label2.Visible = true;
                        Label3.Visible = true;
                        b1.Visible = false;
                        l6.Visible = false;
                        Label5.Visible = false;
                        t1.Visible = false;
                        gdv1.Visible = true;
                    }
                    
                    //connection.Close();

                    //Response.Write(firstVariable);
                }
            }

            int i = 0;

            SqlConnection con = new SqlConnection(CS);
            con.Open();

            

            string q = "Select * from examDetails where examTag = '"+Session["ques"].ToString()+"' ";
            SqlDataAdapter cmde = new SqlDataAdapter(q, con);
            DataTable dte = new DataTable();
            cmde.Fill(dte);

            gdv1.DataSource = dte;
            gdv1.DataBind();

            

            SqlCommand cmdt = con.CreateCommand();
            cmdt.CommandType = CommandType.Text;

            cmdt.CommandText = "select ID from " + Session["ques_ans"].ToString() + " where ID = '" + Session["user"].ToString() + "' ";
            cmdt.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmdt);
            da.Fill(dt);

            i = Convert.ToInt32(dt.Rows.Count.ToString());


            if (i == 0)
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "insert into " + Session["ques_ans"] + " (ID) values ('" + Session["user"].ToString() + "')";
                cmd.ExecuteNonQuery();
                /*
                cmdt.CommandType = CommandType.Text;

                cmdt.CommandText = "insert into " + Session["ques_marks"] + " (ID,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) values ('" + Session["user"].ToString() + "',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)";
                cmdt.ExecuteNonQuery();
                */
                //con.Close();

            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("SELECT examPassword FROM examDetails where examTag = '" + Session["ques"].ToString() + "' ", connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            secondVariable = reader[0].ToString(); 
                        }
                    }                 
                }
            }

            if(secondVariable.ToString() == t1.Text)
            {
                SqlConnection con = new SqlConnection(CS);
                con.Open();


                int i = 0;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "select * from " + Session["ques_marks"].ToString() + " where ID = '"+Session["user"].ToString()+"' ";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i == 1)
                {

                    //Response.Redirect("question_list.aspx");

                    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
                    {
                        using (SqlCommand command = new SqlCommand("SELECT total FROM "+Session["ques_marks"].ToString()+ "  where ID = '" + Session["user"].ToString() + "' ", connection))
                        {
                            connection.Open();

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    thirdVariable = reader[0].ToString();
                                }
                            }
                        }
                    }

                    
                        l6.Text = "You already attend this exam. Now you don't have any access in this examination.";
                        l6.Text += "Your marks is : ";
                        l6.Text += thirdVariable;
                    
                    
                }


                else
                {
                    SqlCommand cmdt = con.CreateCommand();
                    cmdt.CommandType = CommandType.Text;
                    cmdt.CommandType = CommandType.Text;

                    cmdt.CommandText = "insert into " + Session["ques_marks"] + " (ID,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) values ('" + Session["user"].ToString() + "',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)";
                    cmdt.ExecuteNonQuery();

                    

                    Response.Redirect("question_list.aspx");
                }

                con.Close();
            }
            else
            {
                Label6.Text = "Entered Password is not mached!!!";
            }
        }

        protected void b2_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("log_in.aspx");
        }
    }
}