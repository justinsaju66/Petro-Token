using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class changepassword : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncp_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        String str = "Select *from user_creation where user_name='" + Session["user_name"].ToString() + "' and password ='" + enc.EncryptConnectionString(txtcp.Text)+ "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            str = "update user_creation set password ='" +enc.EncryptConnectionString(txtnp.Text)+ "' where user_name='" + Session["user_name"].ToString() + "'";
            dl.DmlCmd(str);
            Response.Write("<script language = 'javaScript'>alert('password changed successfully')</script>");
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("<script language = 'javaScript'>alert('invalid password')</script>");
        }

    }
}