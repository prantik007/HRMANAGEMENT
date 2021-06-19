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
    public partial class Prantik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            TextBox1.Visible = false;
            btn_send.Visible = false;

            lbl_welcome.Text =  Convert.ToString(Session["Username"]);
            
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();
            string sql = "Select employeeid from employees where username='" + lbl_welcome.Text + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            int empid =Convert.ToInt32(dt.Rows[0]["employeeid"]);
            Label1.Text = Convert.ToString(empid);

            string sql1 = "select * from payslips where employeeid='" + empid+"'";
            SqlDataAdapter adp1 = new SqlDataAdapter(sql1, con);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);
            DataTable dt1= ds1.Tables[0];
            GridView1.DataSource = dt1;
            GridView1.DataBind();

            Label1.Text = Convert.ToString(empid);

            Label1.Visible = false;
            GridView1.Visible = false;

            GridView2.Visible = false;

            string sql2 = "select messageid,date,messagefrom,message,employeeid from messages where messageto='" + Convert.ToString(Session["Username"]) + "'";
            SqlDataAdapter adp2 = new SqlDataAdapter(sql2, con);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            DataTable dt2 = ds2.Tables[0];
            GridView2.DataSource = dt2;
            GridView2.DataBind();

           
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("WebForm1.aspx");
        }

        protected void btn_payslip_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible == false)
            {
                GridView1.Visible = true;
            }
            else
            {
                if (GridView1.Visible==true)
                {
                    GridView1.Visible = false;
                }

            }
         }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }

        protected void btn_reply_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            btn_send.Visible = true;
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            


            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();
            string sql = "Select employeeid from employees where username='" + lbl_welcome.Text + "'";
            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            int empid = Convert.ToInt32(dt.Rows[0]["employeeid"]);


            
            string date = DateTime.Now.ToString("dd/MM/yyyy");
            string user = Convert.ToString(Session["Username"]);
            string sqli = "Insert into messages(date,messagefrom,messageto,message,employeeid) VALUES('" + date + "','"+user+"','manager','" + TextBox1.Text + "'," + empid + ")";
            SqlCommand cmd = new SqlCommand(sqli, con);
            cmd.ExecuteNonQuery();

            lbl_sent.Text = "Message sent";
        }

    }
}