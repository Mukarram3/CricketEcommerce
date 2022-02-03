using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class Site2 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            using (SportsEcommerceEntities db= new SportsEcommerceEntities())
            {
                var result=db.GetAllCategory().ToList();
                rpt.DataSource = result;
                rpt.DataBind();
               
            }

        }

        private string DecodeFrom64(string encodedData)
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encodedData);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }
        private string EncodePasswordToBase64(string password)
        {
            byte[] encData_byte = new byte[password.Length];
            encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
            string encodedData = Convert.ToBase64String(encData_byte);
            return encodedData;

        }

        protected void login_Click(object sender, EventArgs e)
        {
             using (SportsEcommerceEntities DB = new SportsEcommerceEntities())
            {
                var pass = EncodePasswordToBase64(txtpass.Text);
                var login = DB.userlogin(txtemail.Text, pass).ToList();
                if (login.Count >= 1)
                {
                    Session["UserId"] = login[0].ID.ToString();
                    Session["UserName"] = login[0].UserName;
                    Session["Type"] = login[0].Type;
                    Session.Timeout = 720;

                    Response.Cookies["Sports"]["UserId"] = login[0].ID.ToString();
                    Response.Cookies["Sports"]["UserName"] = login[0].UserName;
                    Response.Cookies["Sports"]["Type"] = login[0].Type;
                    Response.Cookies["Sports"].Expires = DateTime.Now.AddDays(30);

                    if(login[0].Type == "admin")
                    {
                        Response.Redirect("UserSetup.aspx");
                    }
                    else
                    {
                        Response.Redirect("ProductIndex.aspx");
                    }
                    
                }
                else
                {
                    loginerror.Text = "Invalid Email Or Password";
                }
            }
        }
    }
}