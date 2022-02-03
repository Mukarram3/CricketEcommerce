using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            txtstatus.Items.Insert(0, new ListItem("Please Select Status", "0"));

            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                var categories = db.GetAllCategory().ToList();
                ddlcategory.DataSource = categories;
                ddlcategory.DataTextField = "CategoryName";
                ddlcategory.DataValueField = "ID";
                ddlcategory.DataBind();
            }
            ddlcategory.Items.Insert(0, new ListItem("Please Select Category", "0"));

            if (Request.QueryString != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                using (SportsEcommerceEntities db = new SportsEcommerceEntities())
                {
                    var result = db.Products.FirstOrDefault(v => v.ID == id);
                    if (result != null)
                    {
                        txttitle.Text = result.Title;
                        ddlcategory.SelectedValue = result.CategoryID.ToString();
                        txtdescription.InnerText = result.Description;
                        txtprice.Text = result.Price.ToString();
                        txtquantity.Text = result.Quantity.ToString();
                        //txtstatus.SelectedValue = result.Status.ToString();
                        image.ImageUrl = "assets/images/" + result.Image;
                    }
                }
            }
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                Product tb = null;
                if (Request.QueryString["ID"] != null)
                {
                    int EditId = Convert.ToInt32(Request.QueryString["ID"]);

                    tb = db.Products.FirstOrDefault(v => v.ID == EditId);
                }
                else
                {
                    tb = new Product();
                }

                tb.CategoryID = Convert.ToInt32(ddlcategory.SelectedValue);
                tb.Title = txttitle.Text;
                //tb.CategoryID = Convert.ToInt32(ddlcategory.SelectedValue);

                tb.Description = txtdescription.InnerText;
                tb.Price = Convert.ToInt32(txtprice.Text);
                if (txtstatus.SelectedItem.Text == "1")
                {
                    tb.Status = true;
                }
                if (txtstatus.SelectedItem.Text == "0")
                {
                    tb.Status = false;
                }
                tb.Quantity = Convert.ToInt32(txtquantity.Text);
                file.SaveAs(Server.MapPath("assets/images/" + file.FileName));

                tb.Image = file.FileName;

                if (Request.QueryString["ID"] == null)
                {
                    db.Products.Add(tb);
                }
                var result=db.SaveChanges();
                if(result == 1)
                {
                    Response.Redirect("ProductSetup.aspx");
                }
                
            }
        }
    }
}