using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (SportsEcommerceEntities DB = new SportsEcommerceEntities())
            {
                var login = DB.userlogin(txtemail.Text, txtpass.Text).ToList();
                if (login.Count >= 1)
                {
                    //Response.Redirect("UserSetup.aspx");
                }
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

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            using (SportsEcommerceEntities db = new SportsEcommerceEntities())
            {
                User tb = new User();
                tb.UserName = txtusername.Text;
                tb.FatherName = txtfathername.Text;
                tb.Email = txtsignupemail.Text;
                tb.Password = EncodePasswordToBase64(txtsignuppass.Text);
                tb.Phone = txtsignupphone.Text;
                tb.Status = true;
                db.Users.Add(tb);
                var result=db.SaveChanges();
                if (result == 1)
                {

                }
                else
                {

                }
            }
        }
    }
}