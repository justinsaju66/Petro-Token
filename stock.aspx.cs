using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class stock : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        // String str = "";
        //str = "insert into stock(fuel_type, qty)values('" +ddfueltype.SelectedItem.Text + "','" + txtqty.Text + "')";
        //dl.DmlCmd(str);
        //Response.Write("<script language='javascript'>alert('record saved successfully......')</script>");
        

    }
protected void  btnclose_Click(object sender, EventArgs e)
{
    txtqty .Text =" ";
    ddfueltype .SelectedIndex =0;
   }
protected void ddfueltype_SelectedIndexChanged(object sender, EventArgs e)
{
    string str1 = "select sum(liters) as qty from inwards where type='" + ddfueltype.SelectedItem.Text + "' group by liters";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtqty.Text = ds.Tables[0].Rows[0]["qty"].ToString();
            }
            else
            {
                txtqty.Text = "0";
            }
}
}