using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class UserSetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if(Session["UserId"] == null)
            {
                    Response.Redirect("login.aspx");
            }

           
            //var Type = Session["Type"].ToString();
            //if(Type == "User")
            //{
            //    Response.Redirect("ProductIndex.aspx");
            //}
            UserGridView();
        }

        protected void UserGridView()
        {
            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                var alluser = db.GetAllUser().ToList();
                GV.DataSource = alluser;
                GV.DataBind();
                
            }
        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                Response.Redirect("User.aspx/?ID="+e.CommandArgument);
            }
            if (e.CommandName == "Delete")
            {
                using (SportsEcommerceEntities db= new SportsEcommerceEntities())
                {
                    var deluser=db.deleteuser(Convert.ToInt32(e.CommandArgument));
                    if (deluser == 1)
                    {
                        var alluser = db.GetAllUser().ToList();
                        GV.DataSource = alluser;
                        GV.DataBind();
                    }
                }
            }
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}