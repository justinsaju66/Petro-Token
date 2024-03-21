using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class vehicle_details : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = " ";


    public void fillcustomer()
    {
        String str = "select * from customer_details";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "name";
        DropDownList1.DataValueField = "customer_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select any", "0"));
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            fillgrid();
            fillcustomer();
        }
    }
    protected void btnsbmit_Click(object sender, EventArgs e)
    {
        String str = "";
        str = "insert into vehicle_details(customer_id, vehicle_no,vehicle_type)values('" + DropDownList1.SelectedItem.Text  + "','" + txtvehicleno.Text + "','" + ddvehicletype.SelectedItem.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('record saved successfully......')</script>");
        fillgrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "delete from vehicle_details where vehicledetails_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
       
        txtvehicleno.Text = "";
        ddvehicletype.ClearSelection();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        String str = "update vehicle_details set customer_id='" + DropDownList1.SelectedItem.Text + "', vehicle_no='" + txtvehicleno.Text + "', vehicle_type='" + ddvehicletype.SelectedValue + "',where vehicledetails_id='" + id + "'";
        dl.DmlCmd(str);
        fillgrid();
     
        txtvehicleno.Text = "";
        ddvehicletype.ClearSelection();
    }
    public void fillgrid()
    {
        String str = "select * from vehicle_details";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[rowIndex];
        Label lblid = (Label)row.FindControl("lblID");
        id = lblid.Text;
      
        txtvehicleno.Text = GridView1.Rows[rowIndex].Cells[2].Text;
        ddvehicletype.Text = GridView1.Rows[rowIndex].Cells[3].Text;
      }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        txtvehicleno.Text = " ";
      
        ddvehicletype.ClearSelection();

    }
}