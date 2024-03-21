using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class inwards : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    public void fillgrid()
    {
        String str = "select * from inwards";
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
            txtdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
             fillgrid();
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtvnumber.Text = "";
        txtcms.Text = "";
        txtdate.Text = "";
        ddlsource.ClearSelection();
       txtamnt.Text = "";
       txtliters.Text = "";
       ddltype.ClearSelection();
       txtnt.Text = "";
    }
    protected void tnsubmit_Click(object sender, EventArgs e)
    {
        
        DateTime choos_date = Convert.ToDateTime(txtdate.Text);
        double diff = (DateTime.Now - choos_date).TotalDays;
        if (diff < 0)
        {
            Response.Write("<script language='javascript'>alert('Cannot be fiter date')</script>");
        }

        else
        {
            String str = "";
            str = "insert into inwards(v_number, date, petrol_bunk, source, type, liters, amount, commission, net_amount,user_name)values('" + txtvnumber.Text + "','" + txtdate.Text + "','" + Label1.Text + "','" + ddlsource.SelectedItem.Text + "','" + ddltype.SelectedItem.Text + "','" + txtliters.Text + "','" + txtamnt.Text + "','" + txtcms.Text + "','" + txtnt.Text + "','" + Session["user_name"].ToString() + "')";
            dl.DmlCmd(str);
            Response.Write("<script language='javascript'>alert('record saved successfully......')</script>");
            fillgrid();
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
            txtamnt.Text = total.ToString();
            int nettotal = amount*10/100;
            txtnt.Text = total.ToString();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        String str = "update inwards set v_number='" + txtvnumber.Text + "', date='" + txtdate.Text + "', source='" + ddlsource.SelectedValue + "', liters='" + txtliters.Text + "', type='" + ddltype.SelectedValue + "', amount='" + txtamnt.Text + "', commission='" + txtcms.Text + "', net_amount='" + txtnt.Text + "' where inwards_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtliters.Text = "";
        txtvnumber.Text = "";
        ddlsource.ClearSelection();
        txtnt.Text = "";
        txtcms.Text = "";
        ddltype.ClearSelection();
        txtdate.Text = "";
        Label1.Text = "";
    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        String str = "delete from inwards where inwards_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtliters.Text = "";
        txtvnumber.Text = "";
        ddlsource.ClearSelection();
        txtnt.Text = "";
        txtcms.Text = "";
        ddltype.ClearSelection();
        txtdate.Text = "";
        Label1.Text = "";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtvnumber.Text = GridView1.Rows[rowIndex].Cells[1].Text;
        txtdate.Text = GridView1.Rows[rowIndex].Cells[2].Text;
        ddlsource.SelectedValue = GridView1.Rows[rowIndex].Cells[3].Text;
        txtliters.Text = GridView1.Rows[rowIndex].Cells[4].Text;
        ddltype.SelectedValue= GridView1.Rows[rowIndex].Cells[5].Text;
        txtamnt.Text= GridView1.Rows[rowIndex].Cells[6].Text;
        txtcms.Text = GridView1.Rows[rowIndex].Cells[7].Text;
        txtnt.Text = GridView1.Rows[rowIndex].Cells[7].Text;
        Label1.Text = GridView1.Rows[rowIndex].Cells[8].Text;
    }
    protected void ddlsource_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = ddlsource.SelectedItem.Text;
    }
    protected void txtcms_TextChanged(object sender, EventArgs e)
    {
            int commission =int.Parse(txtcms.Text);
            int amount= int.Parse(txtamnt.Text);
            int total = amount * (commission)/100;
            int net = amount - total;
            txtnt.Text = net.ToString();
           
    }
}