using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class Outbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();

            string manager = "manager";

            string sql1 = "select messageid,date,messageto,message,employeeid from messages where messagefrom='"+manager+"'";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql1, con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            DataTable dt1 = ds1.Tables[0];
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }
    }
}