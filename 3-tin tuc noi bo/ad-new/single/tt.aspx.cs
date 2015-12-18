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
using TLLib;
using TTLib;

public partial class ad_single_LocalArticle : System.Web.UI.Page
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
            var strImagePath = Server.MapPath("~/res/LocalArticle/" + strImageName);
            var strThumbImagePath = Server.MapPath("~/res/LocalArticle/thumbs/" + strImageName);

            if (File.Exists(strImagePath))
                File.Delete(strImagePath);
            if (File.Exists(strThumbImagePath))
                File.Delete(strThumbImagePath);
        }
    }

    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void RadGrid1_ItemCreated(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        if (e.Item is GridCommandItem)
        {
            GridCommandItem commandItem = (e.Item as GridCommandItem);
            PlaceHolder container = (PlaceHolder)commandItem.FindControl("PlaceHolder1");
            Label label = new Label();
            label.Text = "&nbsp;&nbsp;";

            container.Controls.Add(label);

            for (int i = 65; i <= 65 + 25; i++)
            {
                LinkButton linkButton1 = new LinkButton();

                LiteralControl lc = new LiteralControl("&nbsp;&nbsp;");

                linkButton1.Text = "" + (char)i;

                linkButton1.CommandName = "alpha";
                linkButton1.CommandArgument = "" + (char)i;

                container.Controls.Add(linkButton1);
                container.Controls.Add(lc);
            }

            LiteralControl lcLast = new LiteralControl("&nbsp;");
            container.Controls.Add(lcLast);

            LinkButton linkButtonAll = new LinkButton();
            linkButtonAll.Text = "Tất cả";
            linkButtonAll.CommandName = "NoFilter";
            container.Controls.Add(linkButtonAll);
        }
    }
    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if (e.CommandName == "alpha" || e.CommandName == "NoFilter")
        {
            String value = null;
            switch (e.CommandName)
            {
                case ("alpha"):
                    {
                        value = string.Format("{0}%", e.CommandArgument);
                        break;
                    }
                case ("NoFilter"):
                    {
                        value = "%";
                        break;
                    }
            }
            ObjectDataSource1.SelectParameters["LocalArticleTitle"].DefaultValue = value;
            ObjectDataSource1.DataBind();
            RadGrid1.Rebind();
        }
        else if (e.CommandName == "QuickUpdate")
        {
            string LocalArticleID, Priority, IsShowOnHomePage, IsAvailable;
            var oLocalArticle = new LocalArticle();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                LocalArticleID = item.GetDataKeyValue("LocalArticleID").ToString(); 
                Priority = ((RadNumericTextBox)item.FindControl("txtPriority")).Text.Trim();
                IsShowOnHomePage = ((CheckBox)item.FindControl("chkIsShowOnHomePage")).Checked.ToString();
                IsAvailable = ((CheckBox)item.FindControl("chkIsAvailable")).Checked.ToString();

                oLocalArticle.LocalArticleQuickUpdate(
                    LocalArticleID,
                    IsShowOnHomePage,
                    IsAvailable,
                    Priority
                );
            }
        }
        else if (e.CommandName == "DeleteSelected")
        {
            string OldImageName;
            var oLocalArticle = new LocalArticle();

            foreach (GridDataItem item in RadGrid1.SelectedItems)
            {
                OldImageName = ((HiddenField)item.FindControl("hdnImageName")).Value;
                DeleteImage(OldImageName);
            }
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileImageName = (RadUpload)row.FindControl("FileImageName");
            var oLocalArticle = new LocalArticle();

            string strLocalArticleID = ((HiddenField)row.FindControl("hdnLocalArticleID")).Value;
            string strOldImageName = ((HiddenField)row.FindControl("hdnOldImageName")).Value;
            string strImageName = FileImageName.UploadedFiles.Count > 0 ? FileImageName.UploadedFiles[0].GetName() : "";
            string strPriority = ((RadNumericTextBox)row.FindControl("txtPriority")).Text.Trim();
            string strMetaTittle = ((TextBox)row.FindControl("txtMetaTittle")).Text.Trim();
            string strMetaDescription = ((TextBox)row.FindControl("txtMetaDescription")).Text.Trim();
            string strLocalArticleTitle = ((TextBox)row.FindControl("txtLocalArticleTitle")).Text.Trim();
            string strConvertedLocalArticleTitle = TLLib.Common.ConvertTitle(strLocalArticleTitle);
            string strDescription = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtDescription")).Content.Trim());
            string strContent = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContent")).Content.Trim());
            string strTag = ((TextBox)row.FindControl("txtTag")).Text.Trim();
            string strLocalArticleCategoryID = ((RadComboBox)row.FindControl("ddlCategory")).SelectedValue;
            string strIsShowOnHomePage = ((CheckBox)row.FindControl("chkIsShowOnHomePage")).Checked.ToString();
            string strIsAvailable = ((CheckBox)row.FindControl("chkIsAvailable")).Checked.ToString();


            if (e.CommandName == "PerformInsert")
            {
                strImageName = oLocalArticle.LocalArticleInsert(
                    strImageName,
                    strMetaTittle,
                    strMetaDescription,
                    strLocalArticleTitle,
                    strConvertedLocalArticleTitle,
                    strDescription,
                    strContent,
                    strTag,
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    strLocalArticleCategoryID,
                    strIsShowOnHomePage,
                    strIsAvailable,
                    strPriority
                    );

                string strFullPath = "~/res/LocalArticle/" + strImageName;
                if (!string.IsNullOrEmpty(strImageName))
                {
                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 800, 800);
                    ResizeCropImage.CreateThumbNailByCondition("~/res/LocalArticle/", "~/res/LocalArticle/thumbs/", strImageName, 120, 120);
                }
                RadGrid1.Rebind();
            }
            else
            {
                var dsUpdateParam = ObjectDataSource1.UpdateParameters;
                var strOldImagePath = Server.MapPath("~/res/LocalArticle/" + strOldImageName);
                var strOldThumbImagePath = Server.MapPath("~/res/LocalArticle/thumbs/" + strOldImageName);

                dsUpdateParam["LocalArticleTitle"].DefaultValue = strLocalArticleTitle;
                dsUpdateParam["ConvertedLocalArticleTitle"].DefaultValue = strConvertedLocalArticleTitle;
                dsUpdateParam["ImageName"].DefaultValue = strImageName;
                dsUpdateParam["LocalArticleCategoryID"].DefaultValue = strLocalArticleCategoryID;
                dsUpdateParam["IsShowOnHomePage"].DefaultValue = strIsShowOnHomePage;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;

                if (!string.IsNullOrEmpty(strImageName))
                {
                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);
                    if (File.Exists(strOldThumbImagePath))
                        File.Delete(strOldThumbImagePath);

                    strImageName = (string.IsNullOrEmpty(strConvertedLocalArticleTitle) ? "" : strConvertedLocalArticleTitle + "-") + strLocalArticleID + strImageName.Substring(strImageName.LastIndexOf('.'));

                    string strFullPath = "~/res/LocalArticle/" + strImageName;

                    FileImageName.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    ResizeCropImage.ResizeByCondition(strFullPath, 800, 800);
                    ResizeCropImage.CreateThumbNailByCondition("~/res/LocalArticle/", "~/res/LocalArticle/thumbs/", strImageName, 120, 120);
                }
            }
        }
        if (e.CommandName == "DeleteImage")
        {
            var oLocalArticle = new LocalArticle();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strLocalArticleID = s[0];
            var strImageName = s[1];

            oLocalArticle.LocalArticleImageDelete(strLocalArticleID);
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
            var dv = (DataView)ObjectDataSource1.Select();
            var LocalArticleID = ((HiddenField)row.FindControl("hdnLocalArticleID")).Value;
            var ddlCategory = (RadComboBox)row.FindControl("ddlCategory");

            if (!string.IsNullOrEmpty(LocalArticleID))
            {
                dv.RowFilter = "LocalArticleID = " + LocalArticleID;

                if (!string.IsNullOrEmpty(dv[0]["LocalArticleCategoryID"].ToString()))
                    ddlCategory.SelectedValue = dv[0]["LocalArticleCategoryID"].ToString();
            }
            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileImageName.ClientID));
        }
    }

    #endregion
    
}