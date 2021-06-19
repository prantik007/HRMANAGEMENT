using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace WebApplication2
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btn_ok.Visible = false;
            btn_yes.Visible = true;
            btn_no.Visible = true;
            lbl_sure.Text = "Are you sure?";
        }

        protected void btn_no_Click(object sender, EventArgs e)
        {
            Session["delempid"]=null;
            Response.Redirect("AllEmployee.aspx");
        }

        protected void btn_yes_Click(object sender, EventArgs e)
        {
            int empid=Convert.ToInt32(Session["delempid"]);
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();
            string qry="delete from employees where employeeid="+empid;
            SqlCommand cmd=new SqlCommand(qry,con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["delempid"] = null;


            btn_yes.Visible = false;
            btn_no.Visible = false;
            lbl_sure.Text = "Deleted";
            btn_ok.Visible = true;

        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("AllEmployees.aspx");
        }
    }
}