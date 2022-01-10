using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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

            using(SportsEcommerceEntities db= new SportsEcommerceEntities())
            {
                //var alluser = db.GetAllUsers().ToString();
                //GV.DataSource = alluser;
                //GV.DataBind();
            }
        }
    }
}