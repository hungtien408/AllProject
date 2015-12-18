using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

public partial class gio_hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        var dtCart = Session["Cart"] as DataTable;
        var lblSubTotal = ListView1.FindControl("lblSubTotal") as Label;
        var hdnSubTotal = ListView1.FindControl("hdnSubTotal") as HiddenField;

        double Total = 0;

        if (lblSubTotal != null)
        {
            foreach (DataRow dr in dtCart.Rows)
            {
                var Quantity = Convert.ToInt32(dr["Quantity"]);
                var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                Total += Quantity * Price;
            }
            lblSubTotal.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',');
            hdnSubTotal.Value = Total.ToString();
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        if (cmd == "Remove")
        {
            var Quantity = (item.FindControl("hdnQuantity") as HiddenField).Value;
            var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.DeleteItem(ProductID);
            ListView1.DataBind();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void btGui_Click(object sender, EventArgs e)
    {

    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Session["Cart"] != null)
            {
                var dtCart = Session["Cart"] as DataTable;
                if (dtCart.Rows.Count != 0)
                {
                    SmtpClient smtpClient = new SmtpClient();
                    MailMessage message = new MailMessage();
                    MailAddress fromAddress = new MailAddress("001khuong@gmail.com");
                    smtpClient.Host = "smtp.gmail.com";
                    smtpClient.Port = 587;
                    smtpClient.UseDefaultCredentials = true;
                    smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtpClient.EnableSsl = true;
                    //smtpClient.Credentials = new System.Net.NetworkCredential("001khuong@gmail.com", "khuong@123");
                    message.From = fromAddress;

                    //message.To.Add("info@avalgroups.com");
                    message.To.Add("001khuong@gmail.com");
                    message.To.Add(txtEmail.Text.Trim());
                    message.Subject = "ĐẶT HÀNG: FASHION 4 GIRL";
                    message.IsBodyHtml = true;

                    string OrderNumber = Guid.NewGuid().GetHashCode().ToString("X");
                    var lblSubTotal = ((Label)ListView1.FindControl("lblSubTotal")).Text.Trim();
                    string msg = "<h2>ĐẶT HÀNG: FASHION 4 GIRL</h2>";
                    msg += "<h3>Thông tin người mua:</h3>";
                    //msg += "<b>Mã đơn hàng: <b/>" + OrderNumber + "<br />"; ;
                    msg += "<b>Tên khách hàng: </b>" + txtHoTen.Text.Trim().ToString() + "<br />";
                    msg += "<b>Địa chỉ: </b>" + txtAddress.Text.Trim().ToString() + "<br />";
                    //msg += "<b>Địa chỉ: </b>" + txtAddress.Text.Trim().ToString() + ", " + ddlDistrict.SelectedItem.Text + ", " + ddlProvince.SelectedItem.Text + "<br />";
                    msg += "<b>Điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
                    msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
                    //msg += "<b>MST: </b>" + txtMST.Text.Trim().ToString() + "<br />";
                    //msg += "<b>Số TK: </b>" + txtNumberAccount.Text.Trim().ToString() + "<br />";

                    //msg += "<b>Hình thức thanh toán: </b>" + ddlPaymentMethod.SelectedItem.Text + "<br />";
                    //msg += "<b>Ngày đặt hàng: </b>" + string.Format("{0:dd/MM/yyyy}", dpFromDate.SelectedDate.ToString()) + "<br />";
                    //msg += "<b>Ngày giao hàng: </b>" + string.Format("{0:dd/MM/yyyy}", dpToDate.SelectedDate.ToString()) + "<br />";
                    msg += "<b>Ghi Chú: </b>" + txtNoiDung.Text.Trim().ToString() + "<br />";
                    msg += "<h3>Thông tin sản phẩm:</h3>";
                    //number of rows in the gridview
                    var SubTotal = string.Format("{0:##,###.##}", lblSubTotal).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                    foreach (DataRow dr in dtCart.Rows)
                    {
                        //string ProductCode = dr["Tag"].ToString();
                        string ProductID = dr["ProductID"].ToString();
                        string ProductName = dr["ProductName"].ToString();
                        //string Length = dr["Length"].ToString();
                        //string Color = dr["Color"].ToString();
                        string Quantity = dr["Quantity"].ToString();
                        //string Price = dr["Price"].ToString();
                        var Price = string.Format("{0:##,###.##}", dr["Price"].ToString()).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                        //msg += "<b>Mã sản phẩm: </b>" + ProductCode + "<br />";
                        msg += "<b>Tên sản phẩm: </b>" + ProductName + "<br />";
                        //msg += "<b>Màu sắc: </b>" + Color + "<br />";
                        //msg += "<b>Kích thước: </b>" + Length + "<br />";
                        msg += "<b>Số lượng: </b>" + Quantity + "<br />";
                        msg += "<b>Giá: </b>" + Price + "<br />";
                        msg += "<br />";
                    }
                    msg += "<p>-------------------------------------------------------------------------</p>";
                    msg += "<b>Tổng tiền: </b>" + SubTotal + "<br/>";

                    message.Body = msg;
                    smtpClient.Credentials = new System.Net.NetworkCredential("001khuong@gmail.com", "khuong@123");
                    smtpClient.Send(message);

                    lblMessage.Text = "Cám ơn bạn đã đặt hàng. Thông tin của bạn đã được gửi. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất!";
                    txtHoTen.Text = "";
                    txtEmail.Text = "";
                    txtNoiDung.Text = "";
                    txtPhone.Text = "";
                    txtAddress.Text = "";
                    txtVerifyCode.Text = "";
                }
                else
                {
                    lblMessage.Text = "Chưa có sản phẩm nào trong giỏ hàng của bạn! Vui lòng quay lại trang mua hàng!";
                    txtHoTen.Text = "";
                    txtEmail.Text = "";
                    txtNoiDung.Text = "";
                    txtPhone.Text = "";
                    txtAddress.Text = "";
                    txtVerifyCode.Text = "";
                }
            }
            else
            {
                //Common.ShowAlert("Chưa có sản phẩm nào trong giỏ hàng của bạn! Vui lòng quay lại trang mua hàng");
                lblMessage.Text = "Chưa có sản phẩm nào trong giỏ hàng của bạn! Vui lòng quay lại trang mua hàng!";
                txtHoTen.Text = "";
                txtEmail.Text = "";
                txtNoiDung.Text = "";
                txtPhone.Text = "";
                txtAddress.Text = "";
                txtVerifyCode.Text = "";
            }
        }
    }
    //protected void txtQuantity_TextChanged(object sender, EventArgs e)
    //{
    //    var textbox = (TextBox)sender;
    //    var parent = textbox.NamingContainer;

    //    var oShoppingCart = new ShoppingCart();

    //    var Quantity = (parent.FindControl("txtQuantity") as TextBox).Text.Trim();
    //    var ProductID = (parent.FindControl("hdnProductID") as HiddenField).Value;
    //    oShoppingCart.UpdateQuantity(ProductID, Quantity);


    //    int Quantity1 = Int32.Parse(Quantity);
    //    if (Quantity1 > 0 && Quantity1 < 1000)
    //    {
    //        oShoppingCart.UpdateQuantity(ProductID, Quantity);
    //        ListView1.DataBind();
    //    }
    //    else
    //    {
    //        textbox.Text = "1";
    //        ScriptManager.RegisterClientScriptBlock((TextBox)sender, sender.GetType(), "runtime", "alert('Bạn nhập quá số lượng cho phép (1 - 999)')", true);
    //    }
    //}
   
}