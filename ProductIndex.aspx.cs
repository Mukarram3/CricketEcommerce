using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class ProductIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SportsEcommerceEntities db= new SportsEcommerceEntities())
            {
                if (Request.QueryString["CID"] != null) {
                    var result = db.CategoryProducts(Convert.ToInt32(Request.QueryString["CID"])).ToList();
                rpt.DataSource = result;
                    rpt.DataBind();

                }
            }
        }

        protected void cart_Click(object sender, EventArgs e)
        {
            Response.Write(Request.QueryString["ID"]);
        }

        protected void cart_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "addtocart")
            {
                Response.Write(e.CommandArgument);
            }
        }
    }
}