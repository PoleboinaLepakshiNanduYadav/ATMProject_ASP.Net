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
    public partial class RegistrationForm : System.Web.UI.Page
    {
        string constr = @"server=NANDUYADAV\SQLEXPRESS;user id=sa;password=Lepakshi;database=Employee";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string Query = "Insert Into Bankdetails Values(@p1,@p2,@p3,@p4,@p5,@p6)";
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@p1", txt1.Text);
            cmd.Parameters.AddWithValue("@p2", txt2.Text);
            cmd.Parameters.AddWithValue("@p3", txt3.Text);
            cmd.Parameters.AddWithValue("@p4", txt4.Text);
            cmd.Parameters.AddWithValue("@p5", txt5.Text);
            cmd.Parameters.AddWithValue("@p6", txt6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            L1.Text = "Registered Successfully";
        }
    }
}