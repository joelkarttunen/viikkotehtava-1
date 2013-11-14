using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class logon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        string tunnus = WebConfigurationManager.AppSettings["tunnus"];
        string salasana = WebConfigurationManager.AppSettings["salasana"];


        if (tunnus == txtTunnus.Text && salasana == txtSalasana.Text)
        {
            Session["logged"] = "true";
            Response.Redirect("f6761_Autokauppa.aspx");
        }

        else
            Response.Redirect("logon.aspx");
    }
}