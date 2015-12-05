using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class dang_ky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {
        var txtUserName = (TextBox)sender;
        var strUserName = txtUserName.Text;
        var CustomValidator1 = (CustomValidator)txtUserName.Parent.FindControl("CustomValidator1");
        var lblMessage = (Label)txtUserName.Parent.FindControl("lblUserNameMessage");

        //string EmailPattern = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
        //if (Regex.IsMatch(strUserName, EmailPattern))
        //{
            if (!string.IsNullOrEmpty(strUserName))
            {
                if (Membership.GetUser(strUserName) != null)
                {
                    CustomValidator1.ErrorMessage = "Tài khoản <b>\"" + strUserName + "\"</b> đã tồn tại!";
                    CustomValidator1.IsValid = false;
                }
                else
                {
                    CustomValidator1.IsValid = true;
                    lblMessage.Text = "Tài khoản <b>\"" + strUserName + "\"</b> có thể sử dụng.";
                }
            }

        //}
        //else
        //{
        //    CustomValidator1.ErrorMessage = "Sai định dạng email."; CustomValidator1.IsValid = false;
        //}

        //var txtEmail = (TextBox)txtUserName.Parent.FindControl("txtEmail");
        //txtEmail.Text = txtUserName.Text;
    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string UserID = "";
            string UserName = "";
            string Password = "";
            string Email = "";
            string FullName = "";
            string Phone = "";
            string Address = "";
            string City = "";
            string District = "";
            string Notes = "";

            UserName = txtUserName.Text.Trim().ToString();
            Password = txtPassword.Text.Trim().ToString();
            Email = txtEmail.Text.Trim().ToString();
            FullName = txtFullName.Text.Trim().ToString();
            Phone = txtPhone.Text.Trim().ToString();
            Address = txtAddress.Text.Trim().ToString();
            City = txtCity.Text.Trim().ToString();
            District = txtDistrict.Text.Trim().ToString();
            Notes = txtNotes.Text.Trim().ToString();


            var oUser = new User();
            var oUserProfile = new UserProfile();

            oUser.UserInsert(UserName, UserName, Password, "khachhang");
            UserID = Membership.GetUser(UserName).ProviderUserKey.ToString();


            oUserProfile.UserProfileInsert(
                UserID,
                "",
                FullName,
                Address,
                Phone,
                "",
                "",
                "",
                Email,
                UserName,
                City,
                District,
                Notes,
                "true");
            Session["IsLogin"] = "true";
            Session["UserName"] = Session["TenKH"] = UserName;
            FormsAuthentication.SetAuthCookie(UserName, true);
            Session["DKTC"] = "true";
            /////////////////////////////////////////////////////////////////////////////////
            Response.Redirect("default.aspx");
        }
    }
}