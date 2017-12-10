using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConnectCourseData();
            }
        }
        private void ConnectCourseData()
        {
            int StudentID = Convert.ToInt32(Request.QueryString["StudentID"]);
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229-Assign03"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand("SELECT * FROM Courses WHERE CourseID IN (SELECT CourseID FROM Enrollments WHERE StudentID=" + StudentID + ")", conn);
            try
            {
                // Open the connection
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                coursesGridView.DataSource = reader;
                coursesGridView.DataBind();
                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}