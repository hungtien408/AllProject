using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for ShoppingCart
/// </summary>
public class ShoppingCart
{
    public void CreateCart(string ProductID, string ImageName, string ProductName, string Price)
    {
        var sessionCart = HttpContext.Current.Session["Cart"];
        DataTable dtCart;
        if (sessionCart == null)
        {
            dtCart = new DataTable();
            dtCart.Columns.Add("ProductID");
            dtCart.Columns.Add("ImageName");
            //dtCart.Columns.Add("Tag");
            dtCart.Columns.Add("ProductName");
            dtCart.Columns.Add("Price", typeof(double));
           
           
            dtCart.Columns.Add("Quantity");

            dtCart.Rows.Add(new object[] { ProductID, ImageName, ProductName, Price, 1 });
        }
        else
        {
            dtCart = sessionCart as DataTable;

            var existRow = (from DataRow dr in dtCart.Rows
                            where dr["ProductID"].ToString() == ProductID
                            select dr).FirstOrDefault();

            if (existRow == null)
                dtCart.Rows.Add(new object[] { ProductID, ImageName, ProductName, Price, 1 });
            else
            {
                var Quantiy = Convert.ToInt32(existRow["Quantity"]);
                existRow["Quantity"] = Quantiy + 1;
            }
        }
        HttpContext.Current.Session["Cart"] = dtCart;
    }

    public void DeleteItem(string ProductID)
    {
        if (HttpContext.Current.Session["Cart"] != null)
        {
            var dtCart = (HttpContext.Current.Session["Cart"] as DataTable).DefaultView;

            (from DataRowView dr in dtCart
             where dr["ProductID"].ToString() == ProductID
             select dr).FirstOrDefault().Delete();

            HttpContext.Current.Session["Cart"] = dtCart.ToTable();
        }
    }
    public void DeleteAllItem()
    {
        if (HttpContext.Current.Session["Cart"] != null)
        {
            var dtCart = (HttpContext.Current.Session["Cart"] as DataTable).DefaultView;
            foreach (DataRowView dr in dtCart)
            {
                string ProductID = dr.Row.ItemArray[0].ToString();
                DeleteItem(ProductID);
            }
        }
    }

    public void UpdateQuantity(string ProductID, string Quantity)
    {
        if (HttpContext.Current.Session["Cart"] != null)
        {
            var dtCart = HttpContext.Current.Session["Cart"] as DataTable;

            (from DataRow dr in dtCart.Rows
             where dr["ProductID"].ToString() == ProductID
             select dr).FirstOrDefault()["Quantity"] = Quantity;
            HttpContext.Current.Session["Cart"] = dtCart;
        }
    }

    public DataTable Cart()
    {
        if (HttpContext.Current.Session["Cart"] != null)
        {
            return HttpContext.Current.Session["Cart"] as DataTable;
        }
        return null;
    }
}