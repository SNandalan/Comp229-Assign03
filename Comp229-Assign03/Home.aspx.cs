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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConnectData();
            }
        }
        private void ConnectData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229-Assign03"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand("select * from Students", conn);
            try
            {
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                StudentGridView.DataSource = reader;
                StudentGridView.DataBind();
                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}