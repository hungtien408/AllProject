using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class tin_tuc_noi_bo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlMeta meta = new HtmlMeta();
        meta.Name = "description";

        meta.Content = "Tin Tức Nội Bộ";
        Page.Title = "Tin Tức Nội Bộ";
        Header.Controls.Add(meta);
    }
    protected string progressTitle(object input)
    {
        var convertTitle = new ConvertTitle();
        return convertTitle.convertToLowerCase(input.ToString());
    }
}