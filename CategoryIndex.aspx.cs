using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class CategoryIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                var result = db.GetAllCategory().ToList();
                rpt.DataSource = result;
                rpt.DataBind();
            }
        }
    }
}