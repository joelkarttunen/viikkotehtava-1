using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class f6761_HaeIlmot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnHae_Click(object sender, EventArgs e)
    {
        
        DataSourceSelectArguments args = new DataSourceSelectArguments("asioid, lastname, firstname, date");
        
        DataView dv = (DataView)srcIlmot.Select(args);

        dv.RowFilter = "lastname LIKE '" + txtName.Text + "%'";

        Gridview1.DataSourceID = "";
        Gridview1.DataSource = dv;
        Gridview1.DataBind();
        
    }
}