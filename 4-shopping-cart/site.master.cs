using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";
            string activePage1 = "";

            if (page.Contains("-pr-") || page.Contains("-dm-"))
                activePage = "san-pham.aspx";
            else if (page.Contains("-ar-"))
                activePage = "tin-tuc.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            //runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;


            if (page.Contains("-dm-"))
                activePage1 = "-dm-" + Request.QueryString["cid"] + ".aspx";

            else if (page.Contains("-pr-"))
                activePage1 = "-dm-" + Request.QueryString["cid"] + ".aspx";

            else if (!page.EndsWith("default.aspx"))
                activePage1 = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage1))
                runScript.InnerHtml += startScript + "changeSubActiveMenu('" + activePage1 + endScript;
        }

    }
    protected string progressTitle(object input)
    {
        var convertTitle = new ConvertTitle();
        return convertTitle.convertToLowerCase(input.ToString());
    }
}