﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f6761_slave : System.Web.UI.Page
{
       
    protected void Page_Load(object sender, EventArgs e)
    {
        lblToday.Text = "Tänään on: " + DateTime.Now;
        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblSelectedDay.Text = string.Format("Valittu päivä: {0}.{1}.{2}", Calendar1.SelectedDate.Day, Calendar1.SelectedDate.Month, Calendar1.SelectedDate.Year);
        lblDayDifference.Text = "Valitun päivän ja tämän päivän erotus: " + (Calendar1.TodaysDate.DayOfYear - Calendar1.SelectedDate.DayOfYear).ToString();
        
    }
    protected void btnPrevYear_Click(object sender, EventArgs e)
    {
        try
        {
            Calendar1.SelectedDate = Calendar1.SelectedDate.Date.AddYears(-1);
            Calendar1.VisibleDate = Calendar1.SelectedDate;
        }
        catch (Exception)
        {
            Calendar1.SelectedDate = DateTime.Now;
            Calendar1.SelectedDate = Calendar1.SelectedDate.Date.AddYears(-1);
            Calendar1.VisibleDate = Calendar1.SelectedDate;
        }
        
    }
    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate == DateTime.MinValue)
        {
            Calendar1.SelectedDate = DateTime.Now;
        }
        Calendar1.SelectedDate = Calendar1.SelectedDate.Date.AddYears(1);
        Calendar1.VisibleDate = Calendar1.SelectedDate;
    }
}