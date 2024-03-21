using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class setting : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    public void fillgrid()
    {
        String str = "select * from setting";
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
            txtdate.Text = DateTime.Now.ToString("dd-MM-yyyy");
            txtdate.Attributes.Add("ReadOnly", "ReadOnly");
            fillgrid();
        }
    }
    protected void txtclear_Click(object sender, EventArgs e)
    {
        txtliters.Text = "";
        txtamount.Text = "";
        ddltype.ClearSelection();
        txtdate.Text = "";
    }
    protected void txtsubmit_Click(object sender, EventArgs e)
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
            str = "select * from setting where type='" + ddltype.SelectedItem.Text + "' and date='" + txtdate.Text + "'";
            DataSet ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count <= 0)
            {
                str = "insert into setting(liters, amount, type, date)values('" + txtliters.Text + "','" + txtamount.Text + "','" + ddltype.SelectedItem.Text + "','" + txtdate.Text + "')";
                dl.DmlCmd(str);
                Response.Write("<script language='javascript'>alert('record saved successfully......')</script>");
                fillgrid();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('record already exists......')</script>");
                //str = "update setting set amount='" + txtamount.Text + "' where type='" + ddltype.SelectedItem.Text + "'";
                //dl.DmlCmd(str);
            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
            String str = "update setting set liters='" + txtliters.Text + "', amount='" + txtamount.Text + "', type='" + ddltype.SelectedValue + "', date='" + txtdate.Text + "' where setting_id='" + id + "'";
            dl.DmlCmd(str);
            fillgrid();
            txtliters.Text = "";
            txtamount.Text = "";
            ddltype.ClearSelection();
            txtdate.Text = "";
       
    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        String str = "delete from setting where setting_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtliters.Text = "";
        txtamount.Text = "";
        ddltype.ClearSelection();
        txtdate.Text = "";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
       txtliters.Text = GridView1.Rows[rowIndex].Cells[1].Text;
       txtamount.Text = GridView1.Rows[rowIndex].Cells[2].Text;
      ddltype.SelectedValue = GridView1.Rows[rowIndex].Cells[3].Text;
      txtdate.Text= GridView1.Rows[rowIndex].Cells[4].Text;
    }
}