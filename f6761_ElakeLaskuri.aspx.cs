using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
public partial class f6761_ElakeLaskuri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        /**** MÄÄRITELLÄÄN OLETUSARVOT IÄLLE JA PALKALLE, MUTTA LATAA NE AINA UUDESTAAN
         * NAPPIA PAINAESSA, JOTEN ARVOT EIVÄT PALJON MUUTU
        
        txtYear.Text = WebConfigurationManager.AppSettings["valueYear"].ToString();
        txtWage.Text = WebConfigurationManager.AppSettings["valueWage"].ToString();
        
         ****/

        mainContent.Style.Add("background-color", WebConfigurationManager.AppSettings["backgroundColor"].ToString());
    }

    public void calculatePension()
    {
        if (int.Parse(txtYear.Text) < 18)
            txtYear.Text = "18";
        if (int.Parse(txtYear.Text) > 63)
            txtYear.Text = "63";

        txtPension.Text = ((double.Parse(txtWage.Text) * 0.5) - (63 - double.Parse(txtYear.Text) * 5.5)).ToString();

           
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtYear.Text = (int.Parse(txtYear.Text) - 1).ToString();
        calculatePension();
    }

    protected void txtYear_TextChanged(object sender, EventArgs e)
    {
        calculatePension();
    }
    protected void btnYearIncrease_Click(object sender, EventArgs e)
    {
        txtYear.Text = (int.Parse(txtYear.Text) + 1).ToString();
        calculatePension();
    }
    protected void btnWageDecrease_Click(object sender, EventArgs e)
    {
        txtWage.Text = (int.Parse(txtWage.Text) - 500).ToString();
        calculatePension();
    }
    protected void txtWage_TextChanged(object sender, EventArgs e)
    {
        calculatePension();
    }
    protected void btnWageIncrease_Click(object sender, EventArgs e)
    {
        txtWage.Text = (int.Parse(txtWage.Text) + 500).ToString();
        calculatePension();
    }
    protected void btnLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/f6761_ElakeLaskuri_2.aspx");
    }
}