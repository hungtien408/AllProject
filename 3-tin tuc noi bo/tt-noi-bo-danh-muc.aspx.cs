using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using TTLib;
public partial class tt_noi_bo_danh_muc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            HtmlMeta meta = new HtmlMeta();
            meta.Name = "description";
            string LocalArticleCategoryID = (Request.QueryString["id"]);
            if (LocalArticleCategoryID != null)
            {
                var sp = new LocalArticleCategory().LocalArticleCategorySelectOne(LocalArticleCategoryID).DefaultView;
                if (sp.Table.Rows.Count > 0)
                {
                    lblLocalArticleCategoryName1.Text = sp[0]["LocalArticleCategoryName"].ToString();
                    Page.Title = sp[0]["LocalArticleCategoryName"].ToString();
                    meta.Content = sp[0]["LocalArticleCategoryName"].ToString();
                    Header.Controls.Add(meta);
                }
            }

        }
    }
    protected string progressTitle(object input)
    {
        var convertTitle = new ConvertTitle();
        return convertTitle.convertToLowerCase(input.ToString());
    }
}