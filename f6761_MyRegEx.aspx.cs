﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6761_MyRegEx : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        //teeman vaihtaminen koodissa täytyy tehdä joko PreInit-tapahtumankäsittelijässä tai ennen sitä
        switch (Request.QueryString["theme"])
        {
            case "Kaunis":
                Page.Theme = "Kaunis";
                break;

            case "Ruma":
                Page.Theme = "Ruma";
                break;

            default:
                break;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}