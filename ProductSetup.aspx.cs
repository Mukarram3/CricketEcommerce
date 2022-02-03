using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class ProductSetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserGridView();
        }

        protected void UserGridView()
        {
            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                var products = db.GetAllProducts().ToList();
                GV.DataSource = products;
                GV.DataBind();

            }
        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                using (SportsEcommerceEntities db = new SportsEcommerceEntities())
                {
                    var delete = db.ProductDelete(Convert.ToInt32(e.CommandArgument));
                    if (delete == 1)
                    {
                        var products = db.GetAllProducts().ToList();
                        GV.DataSource = products;
                        GV.DataBind();
                    }
                }
            }
            if (e.CommandName== "Edit")
            {
                Response.Redirect("Product.aspx/?ID=" + e.CommandArgument);
            }
         
        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}