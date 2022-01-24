using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class Category1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            txtstatus.Items.Insert(0, new ListItem("Please Choose Status","0"));

            if (Request.QueryString["ID"] != null)
            {
                int EditID = Convert.ToInt32(Request.QueryString["ID"]);
                using (SportsEcommerceEntities db = new SportsEcommerceEntities())
                {
                    var data = db.Categories.FirstOrDefault(v => v.ID == EditID);
                    if (data != null)
                    {
                        txtcatname.Text = data.CategoryName;
                        txtdescription.InnerText = data.Description;
                        txtstatus.SelectedItem.Text = data.Status.ToString();
                    }

                }
            }
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                Category tb = null;
                if (Request.QueryString["ID"] != null)
                {
                    int EditID = Convert.ToInt32(Request.QueryString["ID"]);
                    tb = db.Categories.FirstOrDefault(v => v.ID == EditID);
                }

                else
                {
                    tb = new Category();
                }
                tb.CategoryName = txtcatname.Text;
                tb.Description = txtdescription.InnerText;
                tb.Status = true;
                if (Request.QueryString["ID"] == null)
                {
                    db.Categories.Add(tb);
                }
                var result = db.SaveChanges();
                if (result == 1)
                {
                    Response.Redirect("CategorySetup.aspx");
                }
                else
                {
                    Response.Redirect("CategorySetup.aspx");
                }
            }
        }
    }
}