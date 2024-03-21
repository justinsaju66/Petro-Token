using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class login : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        String str = "";
        str ="Select * from user_creation where user_name ='"+txtuname.Text+"'";
            DataSet ds = new DataSet();
        ds=dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            str = "Select * from user_creation where user_name ='" + txtuname.Text + "' and  password ='" +enc.EncryptConnectionString(txtpswrd.Text)+ "'";
            DataSet dsp = new DataSet();
            dsp = dl.GetDataSet(str);
            if (dsp.Tables[0].Rows.Count > 0)
            {
                Session["user_name"] = txtuname.Text; 
                if (dsp.Tables[0].Rows[0]["user_type"].ToString() == "Admin")
                {
                   
                    Response.Redirect("setting.aspx");

                }
                else if (dsp.Tables[0].Rows[0]["user_type"].ToString() == "Petrol bunk")
                {
                    Response.Redirect("customer_details.aspx");
                }
                else if (dsp.Tables[0].Rows[0]["user_type"].ToString() == "Customer")
                {
                    Response.Redirect("history.aspx");
                }
            } 
            else
            {
                Response.Write("<script language='javascript'>alert('Invalid password.....')</script>");
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Invalid user.....')</script>");

        }

    }
    protected void txtpswrd_TextChanged(object sender, EventArgs e)
    {

    }
}