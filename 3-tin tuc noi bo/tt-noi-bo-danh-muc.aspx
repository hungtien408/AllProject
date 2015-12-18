<%@ Page Title="" Language="C#" MasterPageFile="~/sitett.master" AutoEventWireup="true"
    CodeFile="tt-noi-bo-danh-muc.aspx.cs" Inherits="tt_noi_bo_danh_muc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <div class="p-top">
        <div class="sitemap">
            <a id="A1" href="~/" runat="server">Trang chủ</a> &raquo; <a href="tin-tuc-noi-bo.aspx">
                Tin Tức Nội Bộ </a>&raquo;
            <asp:Label ID="lblLocalArticleCategoryName1" runat="server" Text=" "></asp:Label>
        </div>
    </div>
    <h3 class="ttnbchitiet">
        <asp:Label ID="lblLocalArticleCategoryName" runat="server" Text=" "></asp:Label>
    </h3>
    <br />
    <asp:ListView ID="ListView1" runat="server" EnableModelValidation="True" DataSourceID="ObjectDataSource1">
        <ItemTemplate>
            <h3 class="ttnbchitiet">
                <a href='<%# progressTitle(Eval("LocalArticleTitle")) + "-tt-" + Eval("LocalArticleID") + ".aspx" %>'>
                    <%# Eval("LocalArticleTitle") %>
                </a>
            </h3>
            <asp:HiddenField ID="hdnLocalArticleTitle" runat="server" Value='<%# Eval("LocalArticleTitle")%>' />
            <asp:FormView runat="server" ID="FromView1" DataSourceID="ObjectDataSource2">
                <ItemTemplate>
                    <div class="ttnbchitiet">
                        <%# Eval("Description") %>
                    </div>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="ttnbchitiet">
                        <span>Đang cập nhật.</span>
                    </div>
                </EmptyDataTemplate>
            </asp:FormView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="LocalArticleSelectAll"
                TypeName="TTLib.LocalArticle">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:ControlParameter ControlID="hdnLocalArticleTitle" 
                        Name="LocalArticleTitle" Type="String" PropertyName="Value" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="LocalArticleCategoryID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div class="ttnbchitiet">
                <span>Đang cập nhật.</span></div>
        </EmptyDataTemplate>
        <LayoutTemplate>
             <div id="itemPlaceholderContainer" runat="server" style="">
                    <span id="itemPlaceholder" runat="server" />
                </div>
                <div class="pager" align="center">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="ListView1">
                        <Fields>
                          
                            <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current-page" />
                          
                        </Fields>
                    </asp:DataPager>
                </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LocalArticleSelectAll"
        TypeName="TTLib.LocalArticle">
        <SelectParameters>
            <asp:Parameter Name="StartRowIndex" Type="String" />
            <asp:Parameter Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="LocalArticleTitle" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:QueryStringParameter Name="LocalArticleCategoryID" QueryStringField="id" Type="String" />
            <asp:Parameter Name="Tag" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
     
</asp:Content>
