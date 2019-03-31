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
    public partial class user_registration : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        string a, b;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string GetRandomPassword(int length)
            {
                char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
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

            a = GetRandomPassword(10);
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + f1.FileName.ToString());
            b = "images/" + a + f1.FileName.ToString();

            
            con.Open();

            int k = 0;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "select * from registration where userName = '" + t1.Text + "' and ID = '" + t2.Text + "' ";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            k = Convert.ToInt32(dt.Rows.Count.ToString());

            if (k == 0)
            {
                SqlCommand cmdt = con.CreateCommand();
                cmdt.CommandType = CommandType.Text;
                cmdt.CommandText = "insert into registration (userName, ID, fullName, dob, sex, email, photo, password) values('" + t1.Text + "', '" + t2.Text + "', '" + t3.Text + "', '" + t4.Text + "', '" + d1.Text + "', '" + t5.Text + "', '" + b.ToString() + "', '" + t6.Text + "')";
                cmdt.ExecuteNonQuery();
                Session["user"] = t2.Text;
                con.Close();
                Response.Redirect("select_role.aspx");
            }
            else
            {
                l9.Text = "This User Name & User ID is already used. Try with another User Name & User ID...";
            }

            

            

            

                

            
        }
    }
}