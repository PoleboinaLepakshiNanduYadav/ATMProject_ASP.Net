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
    public partial class MainForm : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepositForm.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WithdrawForm.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BalanceAvailable.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}