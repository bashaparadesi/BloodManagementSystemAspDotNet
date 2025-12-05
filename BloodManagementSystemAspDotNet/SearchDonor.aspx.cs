using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace BloodManagementSystemAspDotNet
{
    public partial class SearchDonor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string bloodGroup = DropDownList1.SelectedValue;

                SqlCommand cmd = new SqlCommand("SearchDonorByBlood", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BloodGroup", bloodGroup);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // Optional: show error
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
