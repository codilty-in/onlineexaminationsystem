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
    public partial class exam_list : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        string a;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("log_in.aspx");
            }
            l8.Text = "User ID: ";
            l8.Text += Session["user"];
        }

        

        protected void b1_Click(object sender, EventArgs e)
        {
            string GetRandomPassword(int length)
            {
                char[] chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
                string password = string.Empty;
                Random random = new Random();

                for (int i = 0; i < length; i++)
                {
                    int x = random.Next(1, chars.Length);
                    //For avoiding Repetation of Characters
                    if (!password.Contains(chars.GetValue(x).ToString()))
                        password += chars.GetValue(x);
                    else
                        i = i - 1;
                }
                return password;
            }

            SqlConnection con = new SqlConnection(CS);

            a = GetRandomPassword(15);

            Session["ques"] = a.ToString();

            con.Open();

            /// creating table for exam details

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into examDetails (organizedBy, courseName, courseNo, session, examType, fullMarks, timeDuration, examTag, examPassword) values ('" + Session["user"]+"', '"+t1.Text+"', '"+t2.Text+"', '"+t3.Text+"', '"+d1.Text+"', '"+t4.Text+"', '"+t5.Text+"' , '" + a.ToString()+"', '"+t6.Text+"') ";

            cmd.ExecuteNonQuery();

            /// creating table for exam details

            ///creating table for store question

            SqlCommand cmdt = con.CreateCommand();

            cmdt.CommandType = CommandType.Text;

            cmdt.CommandText = "create table " + a.ToString() + " (quesNo varchar(50) primary key, ques varchar(max), marks varchar(50))";

            cmdt.ExecuteNonQuery();

            ///creating table for store question

            /// creating table for store answer
             
            SqlCommand cmdth = con.CreateCommand();

            cmdth.CommandType = CommandType.Text;

            cmdth.CommandText = "create table " + a.ToString() + "_answer (ID varchar(50) primary key, A varchar(max), B varchar(max), C varchar(max), D varchar(max), E varchar(max), F varchar(max), G varchar(max), H varchar(max), I varchar(max), J varchar(max), K varchar(max), L varchar(max), M varchar(max), N varchar(max), O varchar(max), P varchar(max), Q varchar(max), R varchar(max), S varchar(max), T varchar(max), U varchar(max), V varchar(max), W varchar(max), X varchar(max), Y varchar(max), Z varchar(max), marks varchar(50))";

            cmdth.ExecuteNonQuery();

            /// creating table for store answer
            
            /// creating table for store marks

            SqlCommand cmdf = con.CreateCommand();

            cmdf.CommandType = CommandType.Text;

            cmdf.CommandText = "create table " + a.ToString() + "_marks (ID varchar(50) primary key, A varchar(50), B varchar(50), C varchar(50), D varchar(50), E varchar(50), F varchar(50), G varchar(50), H varchar(50), I varchar(50), J varchar(50), K varchar(50), L varchar(50), M varchar(50), N varchar(50), O varchar(50), P varchar(50), Q varchar(50), R varchar(50), S varchar(50), T varchar(50), U varchar(50), V varchar(50), W varchar(50), X varchar(50), Y varchar(50), Z varchar(50), total varchar(50))";

            cmdf.ExecuteNonQuery();

            /// creating table for store answer


            Response.Redirect("set_question.aspx");

            con.Close();
        }

        
    }
    
}