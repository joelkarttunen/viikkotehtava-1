using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Linq;

/// <summary>
/// Summary description for BLAutot
/// </summary>
public class BLAutot
{
    private static int lkmAuto;
    string xmlpath = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml");

    

	public BLAutot()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static List<Auto> getAutot()
    {
        AutoLista xmlista = new AutoLista();
        List<Auto> autoLista = new List<Auto>();

        Serialisointi.DeSerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), ref xmlista);

        for(int i=0; i < xmlista.Autot.Count; i++)
        {
            autoLista.Add(xmlista.Autot[i]);
        }

        return autoLista;
    }

    public static void TallennaAutot(AutoLista autot)
    {
        Serialisointi.SerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), autot);
    }

    
    public static List<Auto> jarjestaLista(List<Auto> autoLista, string GridViewSortExpression, string SortDirection)
     {
         if (autoLista != null)
         {
             if (GridViewSortExpression != string.Empty)
             {
                 if (SortDirection == "ASC")
                 {
                     autoLista = autoLista.OrderBy
                         (a => a.GetType().GetProperty(GridViewSortExpression)
                             .GetValue(a, null)).ToList();
                 }
                 else
                 {
                     autoLista = autoLista.OrderByDescending
                         (a => a.GetType().GetProperty(GridViewSortExpression)
                             .GetValue(a, null)).ToList();
                 }
             }
             return autoLista;
         }
         else
        {
             return autoLista;
         }
     }
    
}



