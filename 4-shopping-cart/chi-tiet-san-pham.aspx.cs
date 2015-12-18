using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            var dv = (DataView)ObjectDataSource1.Select();
            if (dv.Count == 0)
            {
                ("du lieu dang cap nhat ...").ToString();
            }
            else
            {

                Page.Title = dv[0]["ProductName"].ToString();
                HtmlMeta meta = new HtmlMeta();
                meta.Name = "description";
                meta.Content = dv.Table.Rows[0]["MetaDescription"].ToString();
                Header.Controls.Add(meta);

            }
        }
    }

    protected void lnkbtnShoppingCart_Click(object sender, EventArgs e)
    {
        var lblProductName = FormView2.FindControl("lblProductName") as Label;
        var ProductName = lblProductName.Text;
        ShoppingCart();
        ScriptManager.RegisterClientScriptBlock((LinkButton)sender, sender.GetType(), "runtime", "alert('" + "Sản phẩm " + ProductName + " đã được thêm vào giỏ hàng" + "')", true);
    }
    public void ShoppingCart()
    {
        var lblProductName = FormView2.FindControl("lblProductName") as Label;
        var hdnPrice = FormView2.FindControl("hdnPrice") as HtmlInputHidden;
        var hdnSavePrice = FormView2.FindControl("hdnSavePrice") as HtmlInputHidden;
        var hdnImageName = FormView2.FindControl("hdnImageName") as HiddenField;
        var hdnProductID = FormView2.FindControl("hdnProductID") as HiddenField;
        var ProductID = hdnProductID.Value;
        var ImageName = hdnImageName.Value;
        var ProductName = lblProductName.Text;
        var Price = string.IsNullOrEmpty(hdnPrice.Value) ? "0" : hdnPrice.Value;
        
        var oShoppingCart = new ShoppingCart();
        oShoppingCart.CreateCart(ProductID, ImageName, ProductName, Price);

    }

    protected string progressTitle(object input)
    {
        var convertTitle = new ConvertTitle();
        return convertTitle.convertToLowerCase(input.ToString());
    }
}