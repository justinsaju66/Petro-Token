using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Accolade_SMS;
using System.Net.Mail;
using System.Net;

public partial class recharge : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string email = null;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = DateTime.Now.ToString("dd-MM-yyyy");
        txtdate.Attributes.Add("ReadOnly", "ReadOnly");
       }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtamount.Text = "";
        txtdate.Text = "";
       txtcardno.Text= "";
       txtphone.Text = " ";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String check = "select * from customer_details where card_no='" + txtcardno.Text + "'";
        DataSet dscheck =dl.GetDataSet(check);
        if (dscheck.Tables[0].Rows.Count > 0)
        {
            string str1 = "select amount from recharge where card_no='" + txtcardno.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int amount = int.Parse(ds.Tables[0].Rows[0]["amount"].ToString());
                amount = amount + int.Parse(txtamount.Text);
                str1 = "update recharge set amount=" + amount + " where card_no='" + txtcardno.Text + "'";
                dl.DmlCmd(str1);
                Response.Write("<script language='javaScript'>alert('Recharge is done successfully......')</script>");

                using (var client = new SmtpClient())
                {

                    client.UseDefaultCredentials = false;
                    var NetworkCredentials = new NetworkCredential() { UserName = "justinvalentena@gmail.com", Password = "ahia pfgn badc pvnc" };
                    client.Port = 587;
                    client.EnableSsl = true;
                    client.Host = "smtp.gmail.com";
                    client.Credentials = NetworkCredentials;

                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("justinvalentena@gmail.com");
                    msg.To.Add(email);
                    msg.Subject = "Recharge confirmation from Petro Token Department";
                    msg.Body = "Recharged successfully Rs." + txtamount.Text + " on dated " + txtdate.Text;
                    client.Send(msg);
                }
            }
            else
            {
                String str = "";

                str = "insert into recharge(card_no, amount, date,phone)values('" + txtcardno.Text + "','" + txtamount.Text + "','" + txtdate.Text + "','"+txtphone.Text+"')";
                dl.DmlCmd(str);

                using (var client = new SmtpClient())
                {

                    client.UseDefaultCredentials = false;
                    var NetworkCredentials = new NetworkCredential() { UserName = "justinvalentena@gmail.com", Password = "ahia pfgn badc pvnc" };
                    client.Port = 587;
                    client.EnableSsl = true;
                    client.Host = "smtp.gmail.com";
                    client.Credentials = NetworkCredentials;

                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("justinvalentena@gmail.com");
                    msg.To.Add(email );
                    msg.Subject = "Recharge confirmation from Petro Token Department";
                    msg.Body = "Recharged successfully Rs." +txtamount.Text +" on dated "+txtdate.Text ;
                    client.Send(msg);
                }
                Response.Write("<script language='javaScript'>alert('Recharge is done successfully......')</script>");

                //ATS_SMS sms = new ATS_SMS();
                //sms.sendsms("", "Recharged successfully= " +txtamount.Text) ;
            }
        }
        else
        {
            Response.Write("<script language='javaScript'>alert('Card number does'nt exist')</script>");
            

        }
    }
    protected void txtphone_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtamount_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtcardno_TextChanged(object sender, EventArgs e)
    {
        if (txtcardno.Text.Length > 0)
        {
             String check = "select * from customer_details where card_no='" + txtcardno.Text + "'";
        DataSet dscheck =dl.GetDataSet(check);
        if (dscheck.Tables[0].Rows.Count > 0)
        {
            txtphone.Text = dscheck.Tables[0].Rows[0]["phone"].ToString();
            email = dscheck.Tables[0].Rows[0]["email_id"].ToString();
        }
        }
    }
}
