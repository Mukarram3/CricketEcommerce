using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CricketEcommerce
{
    public partial class User1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if(Request.QueryString["ID"] != null)
            {
                int id=Convert.ToInt32(Request.QueryString["ID"]);
                using(SportsEcommerceEntities db=new SportsEcommerceEntities())
                {
                    var result = db.edituser(id).FirstOrDefault();
                    if(result != null)
                    {
                        txtusername.Text =result.UserName;
                        txtfathername.Text = result.FatherName;
                        txtemail.Text = result.Email;
                        txtpass.Text = DecodeFrom64(result.Password);
                        txtphone.Text = result.Phone;
                        txtstatus.SelectedValue = Convert.ToInt32(result.Status).ToString();

                    }
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

        protected void btninsert_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                using (SportsEcommerceEntities db = new SportsEcommerceEntities())
                {
                    var result = db.edituser(id).FirstOrDefault();
                    if (result != null)
                    {
                        result.UserName= txtusername.Text;
                        result.FatherName= txtfathername.Text;
                        result.Email=txtemail.Text;
                        result.Password= EncodePasswordToBase64(txtpass.Text);
                        result.Phone= txtphone.Text;
                        result.Status = true;
                        var saved=db.SaveChanges();
                        if(saved == 1)
                        {
                            Response.Redirect("UserSetup.aspx");
                        }


                    }
                }
            }

            else
            {
                using (SportsEcommerceEntities db = new SportsEcommerceEntities())
                {

                   
                    var exist=db.emailexists(txtemail.Text).FirstOrDefault();
                    if(exist != null)
                    {
                        emailexist.Text = "Email Already Exists";
                    }
                    else
                    {
                        User user = new User();
                        user.Email = txtemail.Text;
                        user.UserName = txtusername.Text;
                        user.FatherName = txtfathername.Text;

                        user.Password = EncodePasswordToBase64(txtpass.Text);
                        user.Phone = txtphone.Text;
                        user.Status = true;

                        file.SaveAs(Server.MapPath("assets/images/" + file.FileName));
                        user.Image = file.FileName;
                        user.Type = type.SelectedItem.Text;
                        db.Users.Add(user);
                        var saved = db.SaveChanges();
                        if (saved == 1)
                        {
                            Response.Redirect("UserSetup.aspx");
                        }
                    }
                    
                }
            }
        }
    }
}