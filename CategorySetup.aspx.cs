using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class CategorySetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(SportsEcommerceEntities db= new SportsEcommerceEntities())
            {
                var data = db.GetAllCategory().ToList();
                GV.DataSource = data;
                GV.DataBind();
            }
             
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Delete")
            {
                using (SportsEcommerceEntities db = new SportsEcommerceEntities())
                {
                    db.DeleteCategory(Convert.ToInt32(e.CommandArgument));
                    var data = db.GetAllCategory().ToList();
                    GV.DataSource = data;
                    GV.DataBind();
                }
            }

            if(e.CommandName == "Edit")
            {
                Response.Redirect("Category.aspx/?ID=" + e.CommandArgument);
            }
        }
    }
}