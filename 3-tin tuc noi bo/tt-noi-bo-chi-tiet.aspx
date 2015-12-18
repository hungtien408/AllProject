<%@ Page Title="" Language="C#" MasterPageFile="~/sitett.master" AutoEventWireup="true"
    CodeFile="tt-noi-bo-chi-tiet.aspx.cs" Inherits="tt_noi_bo_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <div class="p-top">
        <div class="sitemap">
            <a id="A1" href="~/" runat="server">Trang chủ</a> &raquo; <a href="tin-tuc-noi-bo.aspx">
                Tin Tức Nội Bộ </a>&raquo;
            <asp:HiddenField ID="hdnLocalArticleCategoryID" runat="server" />
            <a href='<%= progressTitle(lblLocalArticleCategoryName1.Text) + "-ctt-" + hdnLocalArticleCategoryID.Value + ".aspx" %>'>
                <asp:Label ID="lblLocalArticleCategoryName1" runat="server" ForeColor="#006BA2"></asp:Label></a>&raquo;
            <asp:Label ID="lblLocalArticleTitle1" runat="server" Text=" "></asp:Label>
        </div>
    </div>
    <h3 class="ttnbchitiet">
        <asp:Label ID="lblLocalArticleTitle" runat="server"></asp:Label>
    </h3>
    <asp:FormView runat="server" ID="FormView1" EnableModelValidation="True">
        <ItemTemplate>
          <div style="color:#cfcfcf;padding:10px;">  <%# string.Format("{0:dd/MM/yyyy HH:mm}", Eval("CreateDate"))%></div>
            <div class="ttnbchitiet">
                <%# Eval("Content")%></div>
        </ItemTemplate>
        <EmptyDataTemplate>
            <span>Đang cập nhật.</span>
        </EmptyDataTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LocalArticleSelectOne"
        TypeName="TTLib.LocalArticle">
        <SelectParameters>
            <asp:QueryStringParameter Name="LocalArticleID" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="clr">
    </div>
    <h3 class="ttnbchitiet">
          <asp:Label ID="lbname" runat="server" Text=""></asp:Label> Khác </h3>
    <div class="clr">
    </div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2" EnableModelValidation="True">
        <ItemTemplate>
            <ul class="more-article">
                <li><a href='<%# progressTitle(Eval("LocalArticleTitle")) + "-tt-" + Eval("LocalArticleID") + ".aspx" %>'>
                    <%# Eval("LocalArticleTitle") %>
                </a></li>
            </ul>
        </ItemTemplate>
        <EmptyDataTemplate>
            <ul class="more-article">
                <li>Đang Cập Nhật </li>
            </ul>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="LocalArticleSameSelectAll"
        TypeName="TTLib.LocalArticle">
        <SelectParameters>
            <asp:Parameter Name="RerultCount" Type="String" DefaultValue="10" />
            <asp:QueryStringParameter DefaultValue="" Name="LocalArticleID" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
