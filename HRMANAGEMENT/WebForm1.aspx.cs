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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();
            String sql = "Select employeeid FROM employees WHERE username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";

            SqlDataAdapter adp = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count >= 1)
            {
                if (TextBox1.Text == "admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    if (TextBox1.Text == "manager")
                    {
                        Response.Redirect("Manager.aspx");
                    }

                    else
                    {
                        Session["Username"] = TextBox1.Text;
                        Response.Redirect("employee.aspx");
                    }
                }
            }
            else
            {
                lbl_invalid.Text = "Invalid credentials";
            }


            con.Close();
           

        
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}