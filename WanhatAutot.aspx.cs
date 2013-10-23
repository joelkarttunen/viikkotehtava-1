using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class WanhatAutot : System.Web.UI.Page
{

    DataTable dt;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        getSomeContent();
    }
    private void getSomeContent()
    {


        dt = new DataTable();
        ds = new DataSet();

        String xmlpath = Server.MapPath("~/App_Data/WanhatAutot.xml");
        String schemapath = Server.MapPath("~/App_Data/WanhatAutot.xsl");

                
        ds.ReadXml(xmlpath);
        ds.ReadXmlSchema(schemapath);

        List<String> merkit = new List<String>();

        merkit.Add("Volvo");
        merkit.Add("Datsun");
        merkit.Add("Nissan");
        merkit.Add("Ford");
        merkit.Add("Porsche");
        merkit.Add("Mazda");
        merkit.Add("Audi");

        listMerkit.DataSource = merkit;
        listMerkit.DataBind();


        GridView1.DataSource = ds;
        GridView1.DataBind();

        
        
    }
    protected void btnKallein_Click(object sender, EventArgs e)
    {

        
        ds.Tables[0].DefaultView.Sort = "myyntiHinta desc";
               
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    protected void btnHalvin_Click(object sender, EventArgs e)
    {
        ds.Tables[0].DefaultView.Sort = "myyntiHinta asc";

        GridView1.DataSource = ds.Tables[0].DefaultView;

        GridView1.DataBind();
    }
    protected void listMerkit_SelectedIndexChanged(object sender, EventArgs e)
    {
      
         
         string strQuery = "merkki like '%" + listMerkit.SelectedItem.Text + "%'";
         ds.Tables[0].DefaultView.RowFilter = strQuery;

         Label4.Text = strQuery;
         GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void listMerkit_TextChanged(object sender, EventArgs e)
    {
        string strQuery = "merkki like '%" + listMerkit.SelectedItem.Text + "%'";
        ds.Tables[0].DefaultView.RowFilter = strQuery;

        Label4.Text = "penis";
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}