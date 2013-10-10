using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class f6761_ValiPalaute : System.Web.UI.Page
{
    string path; 

    protected void Page_Load(object sender, EventArgs e)
    {
        txtBoxDate.Text = DateTime.Now.Day + "." + DateTime.Now.Month + "." + DateTime.Now.Year;
        path = Server.MapPath("~/App_Data/Palautteet.xml");
    }
    protected void sendPalaute_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //muutetaan päivämäärän esitysmuoto
            string date = String.Format("{0}{1}{2}", DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);

            XDocument doc = XDocument.Load(path);

            doc.Root.Add(new XElement("palaute",
                    new XElement("pvm", date),
                    new XElement("tekija", txtBoxName.Text),
                    new XElement("opittu", txtBoxLearned.Text),

                    new XElement("haluanoppia", txtBoxWantLearn.Text),
                    new XElement("hyvaa", txtBoxGood.Text),
                    new XElement("parannettavaa", txtBoxImprove.Text),
                    new XElement("muuta", txtBoxOther.Text)

                ));
            doc.Save(ConfigurationManager.AppSettings["palautexml"]);

            //päivitetään sivu mukavasti että kentät tyhjenevät
            Response.Redirect(Request.RawUrl);
            
        }

    }
    protected void getStuff_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "XmlDataSource1";
        
        GridView1.DataBind();
        
    }
}