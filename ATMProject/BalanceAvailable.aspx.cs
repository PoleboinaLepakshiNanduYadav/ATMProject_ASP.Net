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
    public partial class BalanceAvailable : System.Web.UI.Page
    {
        string constr = @"server=NANDUYADAV\SQLEXPRESS;user id=sa;password=Lepakshi;database=Employee";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string Query = "Select*From Bankdetails Where PinNo=@p1";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@p1", txt1.Text);
            con.Open();
            SqlDataReader Dr = cmd.ExecuteReader();
            if(Dr.Read())
            {
                L1.Text = "Check Your Bank Balance";
                L3.Text = Dr[3].ToString() + "Rs";
            }
            else
            {
                L1.Text = "Invalid PinNo";
            }
        }
    }
}