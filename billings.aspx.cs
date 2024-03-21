 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Accolade_SMS;

public partial class billings : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select * from billings";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "Table";
        GridView1.DataBind();

    }
    public void droppbunk()
    {
        String str = "select *from petrol_bunk";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        ddlbname.DataSource = ds;
        ddlbname.DataTextField = "bunk_name";
        ddlbname.DataValueField = "pbunk_id";
        ddlbname.DataBind();
        ddlbname.Items.Insert(0, new ListItem("select any", "0"));
    }
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            droppbunk();
            txtdate.Text = DateTime.Now.ToString("dd-mm-yyyy");
            txtremaining.Attributes.Add("ReadOnly", "ReadOnly");
            txtdate.Attributes.Add("ReadOnly", "ReadOnly");
            fillgrid();
        }
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtliters.Text = "";
        txtamount.Text = "";
        txtdate.Text = "";
        ddlbname.ClearSelection();
        ddltype.ClearSelection();
        txtcardno.Text = "";
        txttoday.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (ddlbname.SelectedIndex == 0)
        {
            Response.Write("<script language='javascript'>alert('Choose petrol bunk')</script>");
        }
        else
        {
            String str = "";
            //str = "insert into billings(liters, amount, date, bunk_name, card_no, type, trate)values('" + txtliters.Text + "','" + txtamount.Text + "','" + txtdate.Text + "','" + ddlbname.SelectedItem.Text + "','" + txtcardno.Text + "','" + ddltype.SelectedItem.Text + "','"+txttoday.Text+"')";
            //dl.DmlCmd(str);
            //fillgrid();
            int amount = 0;

            str = "select amount from recharge where card_no='" + txtcardno.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                amount = int.Parse(ds.Tables[0].Rows[0]["amount"].ToString());
                int bal = int.Parse(txtamount.Text);
                if (bal > amount)
                {
                    Response.Write("<script language='javascript'>alert('Amount is low......')</script>");
                }
                else
                {
                    amount = amount - bal;
                    int rem = amount;
                    str = "update recharge set amount='" + rem + "' where card_no='" + txtcardno.Text + "'";
                    dl.DmlCmd(str);
                    str = "insert into billings(liters, amount, date, bunk_name, card_no, type, trate,phone)values('" + txtliters.Text + "','" + txtamount.Text + "','" + txtdate.Text + "','" + ddlbname.SelectedItem.Text + "','" + txtcardno.Text + "','" + ddltype.SelectedItem.Text + "','" + txttoday.Text + "','" + txtphone.Text + "')";
                    dl.DmlCmd(str);
                    fillgrid();
                    Response.Write("<script language='javascript'>alert('billing done successfully......')</script>");
                    txtremaining.Text = rem.ToString();
                    //   double remamt = amount - bal ;
                    ATS_SMS sms = new ATS_SMS();


                }
            }
        }
    }

    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "Select * from setting where type='" + ddltype.SelectedItem.Text + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int amount = int.Parse(ds.Tables[0].Rows[0]["amount"].ToString());
            int total = amount * int.Parse(txtliters.Text);
            txtamount.Text = total.ToString();
            txttoday.Text = amount.ToString();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtcardno_TextChanged(object sender, EventArgs e)
    {
        String str = "Select * from recharge where card_no='" +txtcardno.Text  + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtbal.Text = ds.Tables[0].Rows[0]["amount"].ToString();
        }
    }
}
