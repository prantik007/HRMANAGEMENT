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
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Loggedout.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_generate_Click(object sender, EventArgs e)
        {

            
            Response.Redirect("SlipGenerate.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("allempmanager.aspx");
        }

        protected void btn_viewall_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true; ;
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();
          
            string sql1 = "select * from payslips";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql1, con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            DataTable dt1 = ds1.Tables[0];
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

      

        protected void btn_inbox_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inbox.aspx");
        }

        protected void btn_outbox_Click(object sender, EventArgs e)
        {
            Response.Redirect("Outbox.aspx");
        }

        protected void btn_newmsg_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewMsg.aspx");
        }
    }
}