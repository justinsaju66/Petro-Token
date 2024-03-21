using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class petrol_bunk : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    public void dropstate()
    {
        String str = "select *from state";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        ddlstate.DataSource = ds;
        ddlstate.DataTextField = "state_name";
        ddlstate.DataValueField = "state_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("select any", "0"));
    }
    
    public void fillgrid()
    {
        String str = "select * from petrol_bunk";
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
           
            dropstate();
        }
    }
    protected void txtclear_Click(object sender, EventArgs e)
    {
        txtadd.Text = "";
        txtbname.Text = "";
        ddlcity.ClearSelection();
        txtphno.Text = "";
        txtemail.Text = " ";
        ddlstate.ClearSelection();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        if (txtphno.Text.Length < 10)
        {

        }
        else
        {
            string str1 = "select *from petrol_bunk where phone='" + txtphno.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert('card number already exists')</script>");
            }
            else
            {
                String str = "";
                str = "insert into petrol_bunk(bunk_name, address, city, state,phone)values('" + txtbname.Text + "','" + txtadd.Text + "','" + ddlcity.SelectedItem.Text + "','" + ddlstate.SelectedItem.Text + "','" + txtphno.Text + "')";
                dl.DmlCmd(str);
                String str2 = "insert into user_creation(user_name, user_type, password, email_id)values('" + txtbname.Text + "','Petrol bunk','" + enc.EncryptConnectionString(txtpswrd.Text) + "','" + txtemail.Text + "')";
                dl.DmlCmd(str2);
                Response.Write("<script language='javascript'>alert('record saved successfully......')</script>");
                fillgrid();
            }
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
        String str = "update petrol_bunk set bunk_name='" + txtbname.Text + "', address='" + txtadd.Text + "', city='" + ddlcity.SelectedItem.Text + "', state='" + ddlstate.SelectedItem.Text + "',phone='" + txtphno.Text + "' where pbunk_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtbname.Text = "";
        txtadd.Text = "";
        txtphno.Text = "";
        ddlcity.ClearSelection();
        ddlstate.ClearSelection();
    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        String    str = "delete from petrol_bunk where pbunk_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
        txtbname.Text = "";
        txtadd.Text = "";
        txtphno.Text = "";
        ddlcity.ClearSelection();
        ddlstate.ClearSelection();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        dropstate();
       
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtbname.Text = GridView1.Rows[rowIndex].Cells[1].Text;
        txtadd.Text = GridView1.Rows[rowIndex].Cells[2].Text;
        ddlstate.SelectedItem.Text = GridView1.Rows[rowIndex].Cells[4].Text;
        String str = "select *from city where state_id='" + ddlstate.SelectedValue + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        ddlcity.DataSource = ds;
        ddlcity.DataTextField = "city_name";
        ddlcity.DataValueField = "city_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("select any", "0"));
        ddlcity.SelectedItem.Text = GridView1.Rows[rowIndex].Cells[3].Text;
      
        txtphno.Text = GridView1.Rows[rowIndex].Cells[5].Text;
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
   
    {
        String str = "select * from city where state_id='"+ddlstate.SelectedItem.Text +"'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        ddlcity.DataSource= ds;
        ddlcity.DataTextField = "city_name";
        ddlcity.DataValueField = "city_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("select any", "0"));
        
    
    }
    }

