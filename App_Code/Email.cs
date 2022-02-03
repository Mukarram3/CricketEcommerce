using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for Email
/// </summary>
public class Email
{
    public Email()
    {
        
    }

    public static bool SendEmail(string toadd, string subject, string msg, string cc = "", string bcc = "", string attachedfile = null)
    {
        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient();
        try
        {
            string SendingEmail = "", MailServer = "", SendingPassword = "";
            SendingEmail = "YOU Dummy Sending Email Address";
            MailServer = "smtp.gmail.com";
            SendingPassword = "WRITE YOU EMAIL PASSWORD HERE";
            int ServerPort = 587;

            message.IsBodyHtml = true;

            message.From = new MailAddress(SendingEmail, "Noreply");            
            message.To.Add(new MailAddress(toadd.ToString()));            
           
            if (!string.IsNullOrEmpty(cc))
            {
                message.CC.Add(new MailAddress(cc.ToString()));
            }

            if (!string.IsNullOrEmpty(bcc))
            {                
                    message.Bcc.Add(new MailAddress(bcc.ToString()));               
            }
            if (attachedfile != null)
            {
                Attachment attach = null;
                string[] attachArr = attachedfile.Split('*');
                foreach (string obj in attachArr)
                {
                    attach = new System.Net.Mail.Attachment(obj);
                    message.Attachments.Add(attach);
                }
            }

            message.Body = msg;
            message.Subject = subject;

            client.Host = MailServer;
            client.Port = ServerPort;
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = new System.Net.NetworkCredential(SendingEmail, SendingPassword);
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Send(message);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            message = null;
            client = null;
        }
    }
}