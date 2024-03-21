using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class state : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id ="";
    public void fillgrid()
    {
        String str = "select * from state";
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
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string str1 = "";
        str1 = "select * from state where state_name='" + txtState.Text + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str1);
            if(ds.Tables[0].Rows.Count>0)
            {
                Response.Write("<script language='javascript'>alert('State name already exist....')</script>");
            }
            else
            {
        String str = "insert into state(state_name)values('" + txtState.Text + "')";
        dl.DmlCmd(str);
        fillgrid();
                Response.Write("<script language='javascript'>alert('record saved successfully....')</script>");
            }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtState.Text = "";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
        txtState.Text = GridView1.Rows[rowIndex].Cells[1].Text;
        

    }
protected void  btnUpdate_Click(object sender, EventArgs e)
{
    String  str = "update state set state_name='" + txtState.Text + "' where state_Id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
txtState.Text = "";
       
}
protected void  btnDelete_Click(object sender, EventArgs e)
{
    String    str = "delete from state where state_Id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
txtState.Text = "";
}

}