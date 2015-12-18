using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TTLib;
using System.Web.UI.HtmlControls;

public partial class tt_noi_bo_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            var oLocalArticle = new LocalArticle();
            var dv = oLocalArticle.LocalArticleSelectOne(Request.QueryString["id"]).DefaultView;

            string title, description, LocalArticleTitle;
            if (dv.Table.Rows.Count > 0)
            {
                title = dv[0]["MetaTittle"].ToString();
                description = dv[0]["MetaDescription"].ToString();
                LocalArticleTitle = lblLocalArticleTitle.Text = dv[0]["LocalArticleTitle"].ToString();
                lblLocalArticleTitle.Text = dv[0]["LocalArticleTitle"].ToString();
                lblLocalArticleTitle1.Text = dv[0]["LocalArticleTitle"].ToString();
                hdnLocalArticleCategoryID.Value = dv[0]["LocalArticleCategoryID"].ToString();
                lblLocalArticleCategoryName1.Text = dv[0]["LocalArticleCategoryName"].ToString();

                Page.Header.Title = title != "" ? LocalArticleTitle : title;
                ViewState["title"] = LocalArticleTitle;
                HtmlMeta meta = new HtmlMeta();
                meta.Name = "description";
                meta.Content = description;
                Header.Controls.Add(meta);
            }
            FormView1.DataSource = dv;
            FormView1.DataBind();
        }

    }
    protected string progressTitle(object input)
    {
        var convertTitle = new ConvertTitle();
        return convertTitle.convertToLowerCase(input.ToString());
    }
}