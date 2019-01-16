using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leieve_Tea_Project.Pages.OrderSys
{
    public partial class Order : System.Web.UI.Page
    {
        public static double subtotal;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddMenuItemLB_Command(object sender, CommandEventArgs e)
        {
            var theItem = e.CommandArgument.ToString().Split(',');
            double oneItem = double.Parse(theItem[1]);
            subtotal += oneItem;
            SubtotalTextBox.Text = subtotal.ToString("C");

            double gst = subtotal * 0.05;
            GSTTextBox.Text = gst.ToString("C");

            double pst = subtotal * 0.07;
            PSTTextBox.Text = pst.ToString("C");

            double total = subtotal + gst;
            TotalTextBox.Text = total.ToString("C");
        }

        protected void pllaceOrderButton_Click(object sender, EventArgs e)
        {
            string message = "";

            //message +=
        }
    }
}