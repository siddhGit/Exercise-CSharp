using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Fetch_data_from_DataBase_App
{
    public partial class GridView_Page : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlDataAdapter da;
        public SqlCommand cmd;
        public DataSet ds = new DataSet();
        public DataTable dt = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=SIDD-PC;Initial Catalog=CustomerDB;Integrated Security=True");
            con.Open();
            string s = "select * from Customer";
            da = new SqlDataAdapter(s, con);
            ds.Clear();
            ds.Reset();
            da.Fill(ds);

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
    }
}