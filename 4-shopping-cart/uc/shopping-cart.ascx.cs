using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class uc_shopping_cart : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
            var oShoppingCart = new ShoppingCart();
            var dt = oShoppingCart.Cart();
            if (dt.Rows.Count == 0)
            {
                lblSummary.Text = "0";
                lblPrice.Text = "0.000";
            }
            else
            {
                int quantity = 0;
                double Total = 0;

                foreach (DataRow dr in dt.Rows)
                {
                    var Quantity = Convert.ToInt32(dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                    Total += Quantity * Price;
                }
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    quantity += int.Parse(dt.Rows[i]["Quantity"].ToString());
                }

                if (quantity > 0 && quantity < 1000)
                {
                    lblPrice.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " vnđ";
                    lblSummary.Text = quantity.ToString();
                }
            }
        }
    }
}