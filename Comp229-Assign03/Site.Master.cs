using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Page.Title)
            {
                case "Home Page":
                    Page.Title = string.Format("Barden College");
                    break;
                case "Student":
                    Page.Title = string.Format("Students Page");
                    break;
                case "Courses":
                    Page.Title = string.Format("Course Page");
                    break;
                case "Update":
                    Page.Title = string.Format("Update Page");
                    break;
            }
        }
    }
}