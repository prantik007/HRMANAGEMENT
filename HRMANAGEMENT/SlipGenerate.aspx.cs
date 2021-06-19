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
    public partial class SlipGenerate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DropDownList1.Focus();
                DropDownList1.Items.Clear();

                DropDownList1.Items.Add("Select");
                SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
                con.Open();
                String sql = "select name from employees";
                int i;
                SqlDataAdapter adp = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                DataTable dt = ds.Tables[0];
                for (i = 0; i < dt.Rows.Count; i++)
                {
                    DropDownList1.Items.Add(Convert.ToString(dt.Rows[i]["name"]));
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string empname = DropDownList1.SelectedItem.Text;
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();
            string cmd = "select employeeid from employees where name='" + empname+"'";

            SqlDataAdapter sdp = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            sdp.Fill(ds);
            DataTable dt = ds.Tables[0];
            int empid = Convert.ToInt32(dt.Rows[0]["employeeid"]);
            Session["slipgen"] = empid;
            Response.Redirect("Slipgen.aspx?Username="+empname);

        }
    }
}