using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class report : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            Label1.Text = "";
        }
       
    }
    protected void txtdate_TextChanged(object sender, EventArgs e)
    {
        if (rdin.Checked)
        {
            String str = "Select * from inwards where date= '" + txtdate.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "Table";
            GridView1.DataBind();
        }
        else
        {
            String str = "Select * from billings where date= '" + txtdate.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "Table";
            GridView1.DataBind();
            int tot = 0;
            int net =0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                tot = int.Parse(row.Cells[2].Text.ToString());
                net += tot;
                Label1.Visible = true;
                Label1.Text = net.ToString();
            }
        }
       
    }
    protected void rdin_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void rdout_CheckedChanged(object sender, EventArgs e)
    {

    }
}