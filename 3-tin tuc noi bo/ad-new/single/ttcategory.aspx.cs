using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using TLLib;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using TTLib;


public partial class ad_single_LocalArticlecategory : System.Web.UI.Page
{
    #region Common Method

    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (RadComboBox)sender;
        cbo.Items.Insert(0, new RadComboBoxItem(""));
    }

    void DeleteImage(string strImageName)
    {
        if (!string.IsNullOrEmpty(strImageName))
        {
            string strOldImagePath = Server.MapPath("~/res/productcategory/" + strImageName);
            if (File.Exists(strOldImagePath))
                File.Delete(strOldImagePath);
        }
    }

    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if (e.CommandName == "QuickUpdate")
        {
            string LocalArticleCategoryID, IsShowOnMenu, IsShowOnHomePage, IsAvailable;
            var oLocalArticleCategory = new LocalArticleCategory();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                LocalArticleCategoryID = item.GetDataKeyValue("LocalArticleCategoryID").ToString();
                IsShowOnMenu = ((CheckBox)item.FindControl("chkIsShowOnMenu")).Checked.ToString();
                IsShowOnHomePage = ((CheckBox)item.FindControl("chkIsShowOnHomePage")).Checked.ToString();
                IsAvailable = ((CheckBox)item.FindControl("chkIsAvailable")).Checked.ToString();

                oLocalArticleCategory.LocalArticleCategoryQuickUpdate(
                    LocalArticleCategoryID,
                    IsShowOnMenu,
                    IsShowOnHomePage,
                    IsAvailable
                );
            }
        }
        else if (e.CommandName == "DeleteSelected")
        {
            var oLocalArticleCategory = new LocalArticleCategory();
            var errorList = "";

            foreach (GridDataItem item in RadGrid1.SelectedItems)
            {
                var isChildCategoryExist = oLocalArticleCategory.LocalArticleCategoryIsChildrenExist(item.GetDataKeyValue("LocalArticleCategoryID").ToString());
                var LocalArticleCategoryName = ((Label)item.FindControl("lblLocalArticleCategoryName")).Text;
                if (isChildCategoryExist)
                {
                    errorList += ", " + LocalArticleCategoryName;
                }
                else
                {
                    string strImageName = ((HiddenField)item.FindControl("hdnImageName")).Value;

                    if (!string.IsNullOrEmpty(strImageName))
                    {
                        string strSavePath = Server.MapPath("~/res/productcategory/" + strImageName);
                        if (File.Exists(strSavePath))
                            File.Delete(strSavePath);
                    }
                }
            }
            if (!string.IsNullOrEmpty(errorList))
            {
                e.Canceled = true;
                string strAlertMessage = "Danh mục <b>\"" + errorList.Remove(0, 1).Trim() + "\"</b> đang có danh mục con hoặc sản phẩm.<br /> Xin xóa danh mục con hoặc sản phẩm trong danh mục này hoặc thiết lập hiển thị = \"không\".";
                lblError.Text = strAlertMessage;
            }
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");

            string strLocalArticleCategoryName = ((TextBox)row.FindControl("txtLocalArticleCategoryName")).Text.Trim();
            string strConvertedLocalArticleCategoryName = TLLib.Common.ConvertTitle(strLocalArticleCategoryName);
            string strImageName = FileImageName.UploadedFiles.Count > 0 ? FileImageName.UploadedFiles[0].GetName() : "";
            string strParentID = ((RadComboBox)row.FindControl("ddlParent")).SelectedValue;
            string strIsAvailable = ((CheckBox)row.FindControl("chkIsAvailable")).Checked.ToString();
            string strIsShowOnMenu = ((CheckBox)row.FindControl("chkIsShowOnMenu")).Checked.ToString();
            string strIsShowOnHomePage = ((CheckBox)row.FindControl("chkIsShowOnHomePage")).Checked.ToString();

            var oLocalArticleCategory = new LocalArticleCategory();

            if (e.CommandName == "PerformInsert")
            {
                strImageName = oLocalArticleCategory.LocalArticleCategoryInsert(strLocalArticleCategoryName, "", strConvertedLocalArticleCategoryName, strImageName, strParentID, strIsShowOnMenu, strIsShowOnHomePage, strIsAvailable);
                string strFullPath = "~/res/productcategory/" + strImageName;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 40, 40);
                }
                RadGrid1.Rebind();
            }
            else
            {
                var dsUpdateParam = ObjectDataSource1.UpdateParameters;
                var strLocalArticleCategoryID = row.GetDataKeyValue("LocalArticleCategoryID").ToString();
                var strOldImageName = ((HiddenField)row.FindControl("hdnImageName")).Value;
                var strOldImagePath = Server.MapPath("~/res/productcategory/" + strOldImageName);

                dsUpdateParam["LocalArticleCategoryName"].DefaultValue = strLocalArticleCategoryName;
                dsUpdateParam["ConvertedLocalArticleCategoryName"].DefaultValue = strConvertedLocalArticleCategoryName;
                dsUpdateParam["ImageName"].DefaultValue = strImageName;
                dsUpdateParam["ParentID"].DefaultValue = strParentID;
                dsUpdateParam["IsShowOnMenu"].DefaultValue = strIsShowOnMenu;
                dsUpdateParam["IsShowOnHomePage"].DefaultValue = strIsShowOnHomePage;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    var strFullPath = "~/res/productcategory/" + strConvertedLocalArticleCategoryName + "-" + strLocalArticleCategoryID + strImageName.Substring(strImageName.LastIndexOf('.'));

                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);

                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 40, 40);
                }
            }
        }
        if (e.CommandName == "DeleteImage")
        {
            var oLocalArticleCategory = new LocalArticleCategory();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strLocalArticleCategoryID = s[0];
            var strImageName = s[1];

            oLocalArticleCategory.LocalArticleCategoryImageDelete(strLocalArticleCategoryID);
            DeleteImage(strImageName);
            RadGrid1.Rebind();
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if (e.Item is GridEditableItem && e.Item.IsInEditMode)
        {
            var itemtype = e.Item.ItemType;
            var row = itemtype == GridItemType.EditFormItem ? (GridEditFormItem)e.Item : (GridEditFormInsertItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var LocalArticleCategoryID = ((HiddenField)row.FindControl("hdnLocalArticleCategoryID")).Value;
            var dv = (DataView)ObjectDataSource1.Select();
            var ddlParent = (RadComboBox)row.FindControl("ddlParent");

            if (!string.IsNullOrEmpty(LocalArticleCategoryID))
            {
                dv.RowFilter = "LocalArticleCategoryID = " + LocalArticleCategoryID;

                if (!string.IsNullOrEmpty(dv[0]["ParentID"].ToString()))
                    ddlParent.SelectedValue = dv[0]["ParentID"].ToString();
            }

            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileImageName.ClientID));
        }
    }

    protected void lnkUpOrder_Click(object sender, EventArgs e)
    {
        var lnkUpOrder = (LinkButton)sender;
        var strLocalArticleCategoryID = lnkUpOrder.Attributes["rel"];
        var oLocalArticleCategory = new LocalArticleCategory();
        oLocalArticleCategory.LocalArticleCategoryUpOrder(strLocalArticleCategoryID);
        RadGrid1.Rebind();

    }
    protected void lnkDownOrder_Click(object sender, EventArgs e)
    {
        var lnkDownOrder = (LinkButton)sender;
        var strLocalArticleCategoryID = lnkDownOrder.Attributes["rel"];
        var oLocalArticleCategory = new LocalArticleCategory();
        oLocalArticleCategory.LocalArticleCategoryDownOrder(strLocalArticleCategoryID);
        RadGrid1.Rebind();
    }
    #endregion
}