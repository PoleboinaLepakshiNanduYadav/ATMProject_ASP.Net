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
    public partial class WithdrawForm : System.Web.UI.Page
    {
        string constr = @"server=NANDUYADAV\SQLEXPRESS;user id=sa;password=Lepakshi;database=Employee";
        SqlDataReader Dr; SqlConnection con; SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(constr);
            string Query = "Select * From Bankdetails Where PinNo=@p1";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@p1", txt2.Text);
            con.Open();
            Dr = cmd.ExecuteReader();
            if(Dr.Read())
            {
                L2.Text = Dr[3].ToString();
                L3.Text = "Enter Your Amount";
            }
            else
            {
                L3.Text = "Invalid PinNo";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Num = Convert.ToInt32(txt1.Text);
            if (Convert.ToInt32(L2.Text) >= 5000)
            {
                if (Num <= Convert.ToInt32(L2.Text))
                {
                    int Result = Convert.ToInt32(L2.Text) - Num;
                    L1.Text = "Successfully\n" + Num + "Rs \nWithdrawed";
                    con = new SqlConnection(constr);
                    string Querys = "Update Bankdetails set Balance=@p1";
                    cmd = new SqlCommand(Querys, con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@p1", Result);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    L1.Text = "Insufficient Balance";
                }
            }
        }
    }
}