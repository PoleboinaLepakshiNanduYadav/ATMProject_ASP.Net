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
    public partial class Dept : System.Web.UI.Page
    {
        string constr = @"server=NANDUYADAV\SQLEXPRESS;user id=sa;password=Lepakshi;database=Employee";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string Query = "Select*From Bankdetails where AccountNo=@P1 and PinNo=@p2";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@p1", txt1.Text);
            cmd.Parameters.AddWithValue("@p2", txt2.Text);
            con.Open();
            SqlDataReader Dr = cmd.ExecuteReader();
            if(Dr.Read())
            {
                Response.Redirect("MainForm.aspx");
            }
            else
            {
                L1.Text = "Invalid Credentials";
            }
        }
    }
}