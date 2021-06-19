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
    public partial class NewMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PRANTIK-PC;Initial Catalog=payroll;Persist Security Info=True;User ID=prantik;Password=prantik");
            con.Open();

            string txt = DropDownList1.SelectedItem.Text;

            string id="Select employeeid from employees where name='"+txt+"'";
            SqlDataAdapter sdp1 = new SqlDataAdapter(id, con);
            DataSet ds1 = new DataSet();
            sdp1.Fill(ds1);
            DataTable dt1 = ds1.Tables[0];
            int empid = Convert.ToInt32(dt1.Rows[0]["employeeid"]);

            string date=DateTime.Now.ToString("dd/MM/yyyy");

            string sqli = "Insert into messages(date,messagefrom,messageto,message,employeeid) VALUES('" + date +"','manager','" + txt + "','" + TextBox1.Text + "',"+empid+")";
            SqlCommand cmd = new SqlCommand(sqli, con);
            cmd.ExecuteNonQuery();

            lbl_sent.Text = "Message Sent";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }
    }
}