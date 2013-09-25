using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6761_indexMP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnParameter_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/f6761_valuuttamuunnin.aspx?name=" + txtName.Text);
    }
    protected void btnSaveSession_Click(object sender, EventArgs e)
    {
        Session["name"] = txtName.Text;
        Response.Redirect("~/f6761_valuuttamuunnin.aspx");
    }
    protected void btnSaveCookie_Click(object sender, EventArgs e)
    {
        Response.Cookies["nimi"].Value = txtName.Text;
        Response.Redirect("~/f6761_valuuttamuunnin.aspx");
    }
}