using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class f6761_SmLiigaOudotOliot : System.Web.UI.Page
{
    /***
     *  Ei aivan kaikki filtteröinnit toimi
     * muuten kyllä pitäisi toimia
     * 
     * 
     * */
    public DataTable dt = new DataTable();
    public DataView dv = new DataView();

    protected void Page_Load(object sender, EventArgs e)
    {

        string sFilePath = Server.MapPath(@"App_Data\SMLiiga.mdb");


        string conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sFilePath;
        OleDbConnection Conn = new OleDbConnection(conString);
        dt = new DataTable();
        dt.TableName = "taabeli";
        using (Conn)
        {
            Conn.Open();
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM Pisteet", Conn);
            OleDbDataAdapter oDA = new OleDbDataAdapter(cmd);

            oDA.Fill(dt);

        }

        DataView dv = new DataView();
        dv.Table = dt;
        dv.Sort = "sukunimi ASC";

        GridView1.DataSource = dv;
        GridView1.DataBind();

        if (!Page.IsPostBack)
        {
            List<String> pelipaikat = new List<String>();
            pelipaikat.Add("");
            pelipaikat.Add("P");
            pelipaikat.Add("H");
            pelipaikat.Add("M");

            listPosition.DataSource = pelipaikat;
            listPosition.DataBind();

            listPaikka.DataSource = pelipaikat;
            listPaikka.DataBind();

            List<String> joukkueet = new List<String>();
            joukkueet.Add("");
            joukkueet.Add("Kärpät");
            joukkueet.Add("Tappara");
            joukkueet.Add("Lukko");
            joukkueet.Add("TPS");
            joukkueet.Add("HIFK");
            joukkueet.Add("Blues");
            joukkueet.Add("HPK");
            joukkueet.Add("Ilves");
            joukkueet.Add("Kalpa");
            joukkueet.Add("JYP");
            joukkueet.Add("Ässät");
            joukkueet.Add("Pelicans");
            joukkueet.Add("SaiPa");

            listTeam.DataSource = joukkueet;
            listTeam.DataBind();

            listSeura.DataSource = joukkueet;
            listSeura.DataBind();

        }



    }

    public void IniMyStuff()
    {

    }
    protected void btnAllPlayers_Click(object sender, EventArgs e)
    {
        dv = (DataView)GridView1.DataSource;
        dv.Sort = "sukunimi ASC";

        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
    protected void btnSortByName_Click(object sender, EventArgs e)
    {
        dv = (DataView)GridView1.DataSource;

        if (listTeam.SelectedItem.ToString() == "" || listPosition.SelectedItem.ToString() == "")
        {

            dv.Sort = "sukunimi ASC";
            GridView1.DataSource = dv;
            GridView1.DataBind();

        }
        else
        {
            if (listPosition.SelectedItem.ToString() != "")
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "' AND pelipaikka = " + "'" + listPosition.SelectedItem.ToString() + "'";
            }
            else
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";
                Label1.Text = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";

            }

            dv.RowStateFilter = DataViewRowState.CurrentRows;
            dv.Sort = "sukunimi ASC";
            GridView1.DataSource = dv;
            GridView1.DataBind();
        }

    }
    protected void btnSortByPoints_Click(object sender, EventArgs e)
    {
        dv = (DataView)GridView1.DataSource;
        if (listTeam.SelectedItem.ToString() == "" || listPosition.SelectedItem.ToString() == "")
        {
            dv.Sort = "pisteet DESC";

            GridView1.DataSource = dv;
            GridView1.DataBind();
        }
        else
        {
            if (listPosition.SelectedItem.ToString() != "")
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "' AND pelipaikka = " + "'" + listPosition.SelectedItem.ToString() + "'";
            }
            else
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";
                Label1.Text = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";

            }
            dv.RowStateFilter = DataViewRowState.CurrentRows;
            dv.Sort = "pisteet DESC";
            GridView1.DataSource = dv;
            GridView1.DataBind();
        }
    }
    protected void listTeam_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (listTeam.SelectedItem.ToString() != "")
        {
            dv = (DataView)GridView1.DataSource;

            if (listPosition.SelectedItem.ToString() != "")
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "' AND pelipaikka = " + "'" + listPosition.SelectedItem.ToString() + "'";
            }
            else
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";
                Label1.Text = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";

            }
            dv.RowStateFilter = DataViewRowState.CurrentRows;
            GridView1.DataSource = dv;
            GridView1.DataBind();
        }

    }
    protected void listPosition_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (listPosition.SelectedItem.ToString() != "")
        {
            dv = (DataView)GridView1.DataSource;

            if (listTeam.SelectedItem.ToString() != "")
            {
                dv.RowFilter = "seura = " + "'" + listTeam.SelectedItem.ToString() + "' AND pelipaikka = " + "'" + listPosition.SelectedItem.ToString() + "'";
            }
            else
            {
                dv.RowFilter = "pelipaikka = " + "'" + listPosition.SelectedItem.ToString() + "'";
                Label1.Text = "seura = " + "'" + listTeam.SelectedItem.ToString() + "'";

            }
            dv.RowStateFilter = DataViewRowState.CurrentRows;
            GridView1.DataSource = dv;
            GridView1.DataBind();
        }
    }
    protected void BtnCreatePlayer_Click(object sender, EventArgs e)
    {
        string sFilePath = Server.MapPath(@"App_Data\SMLiiga.mdb");


        string conString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sFilePath;
        OleDbConnection Conn = new OleDbConnection(conString);

        using (Conn)
        {
            Conn.Open();

            OleDbCommand cmd = new OleDbCommand(String.Format("INSERT INTO Pisteet (id,sukunimi,etunimi,seura,pelipaikka) VALUES('{0}','{1}','{2}','{3}','{4}')",dt.Rows.Count, txtSukunimi.Text, txtEtunimi.Text, listSeura.SelectedItem.ToString(), listPaikka.SelectedItem.ToString()), Conn);

            cmd.ExecuteNonQuery();
            
        }
    }
}