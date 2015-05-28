﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gameCalculator
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Retrieve all of the result list values
            int result1 = Convert.ToInt16(rblResult1.SelectedValue);
            int result2 = Convert.ToInt16(rblResult2.SelectedValue);
            int result3 = Convert.ToInt16(rblResult3.SelectedValue);
            int result4 = Convert.ToInt16(rblResult4.SelectedValue);
            //Retrieve all of the goals scored
            int scored1 = Convert.ToInt16(txtScored1.Text);
            int scored2 = Convert.ToInt16(txtScored2.Text);
            int scored3 = Convert.ToInt16(txtScored3.Text);
            int scored4 = Convert.ToInt16(txtScored4.Text);
            //Retrieve all of the allowed goals
            int allowed1 = Convert.ToInt16(txtAllowed1.Text);
            int allowed2 = Convert.ToInt16(txtAllowed2.Text);
            int allowed3 = Convert.ToInt16(txtAllowed3.Text);
            int allowed4 = Convert.ToInt16(txtAllowed4.Text);
            //Retrieve all of the specatator numbers
            int spectators1 = Convert.ToInt16(txtSpectators1.Text);
            int spectators2 = Convert.ToInt16(txtSpectators2.Text);
            int spectators3 = Convert.ToInt16(txtSpectators3.Text);
            int spectators4 = Convert.ToInt16(txtSpectators4.Text);
        }
    }
}