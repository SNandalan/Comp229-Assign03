using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UpdateStudent();
            }
        }
        private void UpdateStudent()
        {
            int StudentID = Convert.ToInt32(Request.QueryString["StudentID"]);
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229-Assign03"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand("SELECT * FROM Students where (StudentID)=(@StudentID)", conn);
            comm.Parameters.AddWithValue("@StudentID", StudentID);
            try
            {
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.Read())
                {
                    txtLastName.Text += reader["LastName"];
                    txtFirstName.Text += reader["FirstMidName"];
                    txtEnrollmentDate.Text += reader["EnrollmentDate"];
                }
                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int StudentID = Convert.ToInt32(Request.QueryString["StudentID"]);
            String LastName = Convert.ToString(txtFirstName.Text);
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229-Assign03"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand("update [Students] set LastName=@LastName,FirstMidName=@FirstName,EnrollmentDate=@EnrollmentDate where StudentID=@StudentID", conn);
            comm.Parameters.AddWithValue("@LastName", txtLastName.Text);
            comm.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            comm.Parameters.AddWithValue("@EnrollmentDate", txtEnrollmentDate.Text);
            comm.Parameters.AddWithValue("@StudentID", StudentID);
            try
            {
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                reader.Close();
            }
            finally
            {
                conn.Close();
                Response.Redirect("Home.aspx");
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
