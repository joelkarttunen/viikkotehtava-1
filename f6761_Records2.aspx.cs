using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6761_Records2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetCheapRecords_Click(object sender, EventArgs e)
    {
        //haetaan levytiedot Datatableen vai DataSettiin
        //tämä onnistuu heittämällä vain DataSetillä
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        ds.ReadXml(MapPath("~/App_Data/Records2.xml"));
        //kytketään kontrolliin
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}