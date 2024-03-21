using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_creation : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    public void fillgrid()
    {
        String str= "select * from user_creation";
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
        }
      
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        string str1 = "select *  from user_creation where user_name='" + txtuname.Text.Trim() + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str1);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script language='javascript'>alert('username already exists')</script>");
        }
        else
        {
            string qstr = "insert into user_creation(user_name, user_type, password, email_id)values('" + txtuname.Text.Trim() + "','" + ddlutype.SelectedItem.Text + "','" + enc.EncryptConnectionString(txtpswrd.Text) + "','" + txtemailid.Text + "')";
            dl.DmlCmd(qstr);
            fillgrid();
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtuname.Text = "";
        ddlutype.ClearSelection();
        txtpswrd.Text = "";
        txtcnfrm.Text = "";
        txtemailid.Text= "";
        
       
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtuname.Text = GridView1.Rows[rowIndex].Cells[1].Text;
        ddlutype.SelectedItem.Text = GridView1.Rows[rowIndex].Cells[2].Text;
        txtpswrd.Text = GridView1.Rows[rowIndex].Cells[3].Text;
       txtemailid.Text= GridView1.Rows[rowIndex].Cells[4].Text;
       
        
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        String str = "update user_creation set user_name='" + txtuname.Text + "',user_type='" + ddlutype.SelectedValue + "',password='" + enc.EncryptConnectionString(txtpswrd.Text) + "',email_id='" + txtemailid.Text + "' where user_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
       txtuname.Text = "";
       txtemailid.Text = "";
       txtpswrd.Text = "";
      
       ddlutype.ClearSelection();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        String str = "delete from user_creation where user_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtuname.Text= "";
        txtemailid.Text = "";
        txtpswrd.Text = "";
       
        ddlutype.ClearSelection();
    }

    protected void txtpswrd_TextChanged(object sender, EventArgs e)
    {

    }
}