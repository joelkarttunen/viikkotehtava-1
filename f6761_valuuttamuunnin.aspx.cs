using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6761_valuuttamuunnin : System.Web.UI.Page
{
    private const float BitCoinRate = 94.71F;


    protected void Page_Load(object sender, EventArgs e)
        //kotitehtävää 1 varten katsotaan mihin tieto on tallennettu. Tulee ongelma, jos keksiin on tallennettu aiemmin nimi, ja yrittää välittää sen uudelleen parametrinä.
    {
        if (Request.QueryString["name"] != null)
        {
            txtUser.Text = Request.QueryString["name"];
        }
        if (Session["name"] != null)
        {
            txtUser.Text = (string)Session["name"];
        }
        if (Request.Cookies["nimi"].Value != null)
        {
            txtUser.Text = Request.Cookies["nimi"].Value;
        }
        

    }
    protected void btnConvert_Click(object sender, EventArgs e)
    {
        try
        {
            //muunnetaan käyttäjän antamat Bitcoinit euroiksi
            lblCurrency.Text = string.Format("{0:0.0000} euroa", (float.Parse(txtCurrency.Text) * BitCoinRate));

            listBoxResultsHidden.Items.Add(txtCurrency.Text + " ==> " + lblCurrency.Text);
            listBoxResults.Items.Add(txtCurrency.Text + " ==> " + lblCurrency.Text);
        }
        catch (Exception es)
        {
            lblCurrency.Text = es.Message;
        }
        
    }
}