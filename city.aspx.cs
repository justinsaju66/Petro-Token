using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class city : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    public void fillgrid()
    {
    String str = "select city.city_id,state.state_name,city.city_name from state,city where state.state_id=city.state_id";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "Table";
        GridView1.DataBind();

    }
    public void dropstate()
    {
        String str = "select * from state";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        ddlstate.DataSource= ds;
        ddlstate.DataTextField= "state_name";
       ddlstate.DataValueField= "state_id";
       ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("select any", "0"));
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dropstate();
            fillgrid();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string str = "";
       str="select * from city where city_name='"+txtcname.Text+"'";
        DataSet ds= new DataSet();
        ds=dl.GetDataSet(str);
        if(ds.Tables[0].Rows.Count>0)
        {
           Response.Write("<script language='javascript'>alert('city name already exist......')</script>");
        }
        else
        {
        str = "insert into city(city_name,state_id)values('" + txtcname.Text+ "','"+ddlstate.SelectedItem.Text+"')";
        dl.DmlCmd(str);
        fillgrid();
 Response.Write("<script language='javascript'>alert('Record saved successfully......')</script>");
    }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtcname.Text = "";
        ddlstate.ClearSelection();
    }
protected void  btnupdate_Click(object sender, EventArgs e)
{
    String  str = "update city set city_name='" + txtcname.Text + "', state_id='" + ddlstate.SelectedItem.Text  + "' where city_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
txtcname.Text = "";
ddlstate.ClearSelection();
}
protected void  btndlt_Click(object sender, EventArgs e)
{
     String    str = "delete from city where city_id='" + id + "'";
        dl.DmlCmd(str);
      fillgrid();
      txtcname.Text= "";
ddlstate.ClearSelection();
}
protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
{
    int rowIndex = Convert.ToInt32(e.CommandArgument);
    GridViewRow row = GridView1.Rows[rowIndex];
    Label lblid = (Label)row.FindControl("lblID");
    id = lblid.Text;
    txtcname.Text = GridView1.Rows[rowIndex].Cells[1].Text;
   String d = GridView1.Rows[rowIndex].Cells[2].Text;
   ddlstate.SelectedItem.Text = d;
}
}