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
    public partial class Slipgen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["Username"];

            DateTime d = DateTime.Now;
            d = d.AddMonths(-1);

            DropDownList1.Items.Add(d.ToString("MMMMM"));

            DateTime d1= DateTime.Now;
            DropDownList1.Items.Add(d1.ToString("MMMMM"));

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            int empid = Convert.ToInt32(Session["slipgen"]);
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();

            string cmd1="Select levelid from employees where employeeid='"+empid+"'";           //get levelid from empid
            SqlDataAdapter sdp = new SqlDataAdapter(cmd1, con);
            DataSet ds = new DataSet();
            sdp.Fill(ds);
            DataTable dt = ds.Tables[0];
            int levelid = Convert.ToInt32(dt.Rows[0]["levelid"]);

            string cmd2="select basicsalary from levels where levelid='"+levelid+"'";           //get basic salary from table
            SqlDataAdapter sdp1 = new SqlDataAdapter(cmd2, con);
            DataSet ds1 = new DataSet();
            sdp1.Fill(ds1);
            DataTable dt1 = ds1.Tables[0];
            decimal basicsalary = Convert.ToDecimal(dt1.Rows[0]["basicsalary"]);

            int year = DateTime.Now.Year;                                                       //get date
            string gen= DateTime.Now.ToString();
            int month = DateTime.Now.Month;
            string monthname=DropDownList1.SelectedValue.ToString();

            decimal salaryperday=basicsalary/DateTime.DaysInMonth(year,DateTime.Now.Month);     //calculate salary per day & deduction
            decimal deduction= Convert.ToInt32(TextBox6.Text)*salaryperday;

            
            string sqli = "Insert into payslips(employeeid,month,monthname,year,generatedon,basicsalary,noofleaves,salaryperday,deductionforleaves,netsalary) VALUES("+empid+"," + month+ ",'" + monthname + "'," + year + ",'" + gen + "'," + basicsalary + "," + TextBox6.Text + "," + salaryperday + ","+deduction+","+(basicsalary-deduction)+")";
            SqlCommand cmd = new SqlCommand(sqli, con);

            cmd.ExecuteNonQuery();
            lbl_submitted.Text = "Payslip generated.";

            con.Close();

        }

        protected void btn_home_Click(object sender, EventArgs e)
        {
            Session["slipgen"] = null;
            Response.Redirect("Manager.aspx");
        }

        
    }
}