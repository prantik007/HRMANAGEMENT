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
    public partial class AllEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            
            con.Open();
            string qry = "SELECT * FROM employees ORDER BY employeeid";
            SqlDataAdapter adp = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int employeeid = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);
            Session["delempid"] = employeeid;
            Response.Redirect("DeleteUser.aspx", false);
        }

        protected void btn_goback_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Admin.aspx");
        }
    }
}