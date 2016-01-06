using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Data_Insertion_App
{
    public partial class HTML_Form : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int insert(string s)
        {
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            return 1;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=SIDD-PC;Initial Catalog=CustomerDB;Integrated Security=True");
            con.Open();
            string s = "insert into Customer values('" + txtID.Text + "', '" + txtName.Text + "', '" + txtDescription.Text + "', '" + txtemailid.Text + "', '" + Convert.ToDateTime(txtDOB.Text) + "')";
            int n = insert(s);
            if (n == 1)
                lblMsg.Text = "Data inserted successfully";
            else
                lblMsg.Text = "Registration not sucessfull.";
        }
    }
}