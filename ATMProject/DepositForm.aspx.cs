using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ATMProject
{
    public partial class DepositForm : System.Web.UI.Page
    {
        string constr = @"server=NANDUYADAV\SQLEXPRESS;user id=sa;password=Lepakshi;database=Employee";
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string Query = "Select*From Bankdetails where PinNo=@p1";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@p1", txt1.Text);
            con.Open();
            SqlDataReader Dr = cmd.ExecuteReader();
            if (Dr.Read())
            {
                L4.Text = Dr[3].ToString();
                L2.Text = "Enter Your Amount";
            }
            else
            {
                L2.Text = "Invalid Pin Number";
            }
            con.Close();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Num2 = Convert.ToInt32(txt2.Text);
            int Result = Convert.ToInt32(L4.Text) + Num2;
            SqlConnection con = new SqlConnection(constr);
            string Querys = "Update Bankdetails Set Balance=@p1";
            SqlCommand cmd = new SqlCommand(Querys, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@p1",Result);
            con.Open();
            cmd.ExecuteNonQuery();
            L3.Text = "Successfully\n"+Num2+"Rs\nDeposited";
            con.Close();
        }
    }
}