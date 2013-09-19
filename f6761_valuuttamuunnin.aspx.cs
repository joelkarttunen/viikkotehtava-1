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
    {

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