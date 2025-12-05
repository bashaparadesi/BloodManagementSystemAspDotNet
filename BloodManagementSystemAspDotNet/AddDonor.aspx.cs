using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodManagementSystemAspDotNet
{
    public partial class AddDonor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string DonorName =TextBox1.Text;
            string Age=TextBox2.Text;
            string Gender = RadioButton1.Checked ? RadioButton1.Text :
                            RadioButton2.Checked ? RadioButton2.Text:"";
            string BloodGroup =DropDownList1.SelectedValue;
            string City =TextBox3.Text;
            string Phone =TextBox4.Text;

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERTB", con);
            cmd.CommandType=System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DonorName", DonorName);
            cmd.Parameters.AddWithValue("@Age",Age);
            cmd.Parameters.AddWithValue("@Gender",Gender);
            cmd.Parameters.AddWithValue("@BloodGroup", BloodGroup);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@Phone",Phone);
            cmd.ExecuteNonQuery();
          
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            DropDownList1.SelectedIndex = 0;
            TextBox3.Text = "";
            TextBox4.Text = "";

            Response.Redirect("DonorList.aspx");
        }
    }
}