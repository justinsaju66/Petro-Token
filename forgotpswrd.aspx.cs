using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;

public partial class forgotpswrd : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnrecover_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        String str = "";
        str = "select * from user_creation where user_name='" + txtuname.Text + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            String email = ds.Tables[0].Rows[0]["email_id"].ToString();
            Random r = new Random();
            String s = r.NextDouble().ToString();
            s = s.Substring(3, 6);
            SmtpClient client=new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = true;
            client.Timeout = 100000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("shreyaacharya97@gmail.com","sheyu1234");
            MailMessage msg = new MailMessage();
            msg.To.Add(email);
            msg.From=new MailAddress("shreyaacharya97@gmail.com","sheyu1234");
            msg.Subject="Forgot Password";
            msg.Body="your new password is='"+s+"'";
            client.Send(msg);
            str="update user_creation set password='"+enc.EncryptConnectionString(s)+"' where user_name='"+txtuname.Text +"'";
            dl.DmlCmd(str);
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("<script> alert('invalid user')</script>");
        }
    }
}