using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6761_Autokauppa : System.Web.UI.Page
{
    List<Auto> autoLista = new List<Auto>();
   

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
            IniMyStuff();
        else
        {
            
            autoLista = (List<Auto>)ViewState["autoLista"];

        }
    }
    protected void IniMyStuff()
    {
        autoLista = BLAutot.getAutot();
        contentToGridView(autoLista);

        if ((String)Session["logged"] == "true")
        {
            log.Text = "Olet kirjautunut sisään.";
            btnLogin.Text = "Kirjaudu ulos";

        }
        
    }

    protected void contentToGridView(List<Auto> autoLista)
    {
        ViewState["autoLista"] = autoLista;
        
        GridView1.DataSource = autoLista;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        autoLista.RemoveAt(e.RowIndex);
        contentToGridView(autoLista);
   
        
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridViewSortExpression = e.SortExpression;

        autoLista = BLAutot.jarjestaLista(autoLista, GridViewSortExpression, GetSortDirection());
        contentToGridView(autoLista);
    }

    
    protected void btnUusiAuto_Click(object sender, EventArgs e)
    {

       if ((String)Session["logged"] == "true")
        {

            Regex rekkari = new Regex(@"^[A-Z]{3}-[0-9]{3}$");


            if (rekkari.IsMatch(txtRekkari.Text))
            {
                try
                {
                    Auto a = new Auto();

                    a.Aid = txtAid.Text;
                    a.Rekkari = txtRekkari.Text;
                    a.Merkki = txtMerkki.Text;
                    a.Malli = txtMalli.Text;

                    a.Vm = int.Parse(txtVm.Text);
                    a.MyyntiHinta = int.Parse(txtMyyntiHinta.Text);
                    a.SisaanOstoHinta = int.Parse(txtSisaanOstoHinta.Text);


                    autoLista.Add(a);
                    autoLista = BLAutot.jarjestaLista(autoLista, "Malli", "ASC");
                    contentToGridView(autoLista);
                }
                catch (Exception)
                {
                    
                }



            }
        }
        
        else
        {
            Response.Redirect("logon.aspx");
        }
    }

    private string GridViewSortDirection
     {
         get { return ViewState["SortDirection"] as string ?? "ASC"; }
         set { ViewState["SortDirection"] = value; }
     }
 
     private string GridViewSortExpression
     {
         get { return ViewState["SortExpression"] as string ?? string.Empty; }
         set { ViewState["SortExpression"] = value; }
     }
 
     private string GetSortDirection()
     {
         switch (GridViewSortDirection)
         {
             case "ASC":
                 GridViewSortDirection = "DESC";
                 break;
             case "DESC":
                 GridViewSortDirection = "ASC";
                 break;
         }
         return GridViewSortDirection;
     }

     protected void btnLogin_Click(object sender, EventArgs e)
     {
         if ((String)Session["logged"] == "true")
         {
             Session["logged"] = "false";

            
                 log.Text = "Et ole kirjautunut";
                 btnLogin.Text = "Kirjaudu sisään";

             
         }
         else
             Response.Redirect("logon.aspx");
     }
}