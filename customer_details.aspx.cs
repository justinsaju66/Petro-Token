using System;
using System.Collections.Generic;
using System.Linq; 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Accolade_SMS;

public partial class customer_details : System.Web.UI.Page
{

    DataLayer dl = new DataLayer();
   
    public static string id = "";
    public void fillgrid()
    {
        String str = "select * from customer_details";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "Table";
        GridView1.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();

            //Random r = new Random();
            //string s = r.NextDouble().ToString();
            //card_no = s.Substring(3, 5);
            //lblcardno.Text = card_no;

        }
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtcardno.Text = "";
        txtdob.Text = "";
        txtphone.Text = "";
        rdf.Checked = false;
        rdm.Checked = false;

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        String gender = "";
        if (rdf.Checked)
            gender = "Female";
        else
            gender = "Male";
        DateTime dt = DateTime.Now;
        DateTime choos_date = Convert.ToDateTime(txtdob.Text);
        double diff = (DateTime.Now - choos_date).TotalDays;

        TimeSpan ts = dt - choos_date;

        if (diff < 0)
        {
            Response.Write("<script language='javascript'>alert('Cannot be future date')</script>");
        }
        else
        {
            if ((ts.Days / 365) >= 18)
            {

                string str1 = "select * from user_creation where user_name='" + txtuname.Text + "'";
                DataSet ds = new DataSet();
                ds = dl.GetDataSet(str1);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script language='javascript'>alert('username already exists')</script>");
                }
                else
                {


                    String str = "";
                    str = "insert into customer_details(name,card_no, DOB, gender, phone, date, petrol_bunk,user_name,email_id)values('" + txtname.Text + "','" + txtcardno.Text + "','" + txtdob.Text + "','" + gender + "','" + txtphone.Text + "','" + dt.ToString("yyyy-MM-dd") + "' ,'" + Session["user_name"].ToString() + "','" + txtuname.Text + "','"+ txtemailid.Text  +"')";
                    dl.DmlCmd(str);
                    String str2 = "insert into user_creation(user_name, user_type, password, email_id)values('" + txtuname.Text + "','Customer','" + enc.EncryptConnectionString(txtpswrd.Text) + "','" + txtemailid.Text + "')";
                    dl.DmlCmd(str2);
                    //ATS_SMS sms = new ATS_SMS();
                    //sms.sendsms(txtphone.Text, "user_name =" + txtuname.Text + "password =" + txtpswrd.Text + " card_no=" + txtcardno.Text);

                    Response.Write("<script language='javascript'>alert('record saved successfully......')</script>");
                    fillgrid();
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Date of Birth should be more than 18 years')</script>");
            }
        }
    }

 protected void btnupdate_Click(object sender, EventArgs e)
    {
        String gender = "";
        if (rdf.Checked)
            gender = "Female";
        else
            gender = "Male";
        String str = "update customer_details set name='" + txtname.Text + "',DOB='" + txtdob.Text + "',gender='" + gender + "',phone='" + txtphone.Text + "' where customer_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtname.Text = "";
        txtcardno.Text = "";
        txtdob.Text = "";
        txtphone.Text = "";
        rdf.Checked = false;
        rdm.Checked = false;
    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        String str = "delete from customer_details where customer_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtname.Text = "";
        txtcardno.Text = "";
        txtdob.Text = "";
        txtphone.Text = "";
        rdf.Checked = false;
        rdm.Checked = false;


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtname.Text = GridView1.Rows[rowIndex].Cells[1].Text;
        txtcardno.Text = GridView1.Rows[rowIndex].Cells[3].Text;
        txtdob.Text = GridView1.Rows[rowIndex].Cells[4].Text;
        if (GridView1.Rows[rowIndex].Cells[6].Text == "Female")
        {
            rdf.Checked = true;
        }
        else
        {
            rdm.Checked = true;
        }
        txtphone.Text = GridView1.Rows[rowIndex].Cells[5].Text;
    }
    protected void txtphone_TextChanged(object sender, EventArgs e)
    {

    }
}