 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class history : System.Web.UI.Page
{
        DataLayer dl = new DataLayer();
        public void fillgrid()
        {
            String str = "Select * from billings where card_no IN(select card_no from customer_details where user_name='" + Session["user_name"].ToString() + "')";
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

            String str = "select * from petrol_bunk";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            ddlbname.DataSource = ds;
            ddlbname.DataTextField = "bunk_name";
            ddlbname.DataValueField = "pbunk_id";
            ddlbname.DataBind();
            ddlbname.Items.Insert(0, new ListItem("select any", "0"));
        }
       
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void ddlbname_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "Select * from billings where card_no IN(select card_no from customer_details where user_name='" + Session["user_name"].ToString() + "') and bunk_name='"+ ddlbname.SelectedItem.Text  +"'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "Table";
        GridView1.DataBind();
    }
}