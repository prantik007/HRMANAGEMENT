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
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tbuser.Text == "" || tbuser.Text == null)
            {
                lbldpuser.Text = "Username cannot be empty";
            }
            else if (TextBox7.Text == "" || TextBox7.Text == null)
            {
                lbldpuser.Text = null; ;
                lblpass.Text = "Password cannot be empty";
            }
            else
            {
                lbldpuser.Text = null;
                lblpass.Text = null;
                SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
                con.Open();
                string sql = "Select username from employees where username='" + tbuser.Text + "'";
                SqlDataAdapter adp = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                DataTable dt = ds.Tables[0];
                if (dt.Rows.Count >= 1)
                {
                    lbldpuser.Text = "Username already exists";
                }
                else
                {
                    lbldpuser.Text = null;
                    lblpass.Text = null;
                    String name = TextBox1.Text;
                    int phone = int.Parse(TextBox2.Text);
                    String email = TextBox3.Text;
                    String desig = TextBox4.Text;
                    String un = tbuser.Text;
                    String pw = TextBox7.Text;
                    int lvlid = int.Parse(DropDownList1.Text);
                    string sqli = "Insert into employees(name,phone,email,designation,levelid,username,password) VALUES('" + name + "','" + phone + "','" + email + "','" + desig + "','"+  lvlid +"','" + un + "','" + pw + "')";
                    SqlCommand cmd = new SqlCommand(sqli, con);

                    cmd.ExecuteNonQuery();
                    lbl_useradded.Text = "User Added";
                }
                con.Close();
            }
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Loggedout.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Admin.aspx");
        }

    
     
    }
}