using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_ExceptionHandling : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    try
    {
      MailMessage myMessage = new MailMessage();
      myMessage.Subject = "Exception Handling Test";
      myMessage.Body = "Test message body";
      myMessage.From = new MailAddress("you@yourprovider.com");
      myMessage.To.Add(new MailAddress("you@yourprovider.com"));
      SmtpClient mySmtpClient = new SmtpClient();
      mySmtpClient.Send(myMessage);
      Message.Text = "Message sent";
    }
    catch
    {
      Message.Text = "An error occurred while sending your e‑mail. Please try again.";
    }
  }
}