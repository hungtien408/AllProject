<%@ Page Title="" Language="C#" MasterPageFile="~/sitett.master" AutoEventWireup="true"
    CodeFile="tin-tuc-noi-bo.aspx.cs" Inherits="tin_tuc_noi_bo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--  <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <div class="p-top">
        <div class="sitemap">
            <a id="A1" href="~/" runat="server">Trang chủ</a> &raquo;
            <asp:Label ID="lblArticleName" runat="server">Tin Tức Nội Bộ</asp:Label>
        </div>
    </div>
    <div class="ttnbchitiet">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2" EnableModelValidation="True">
            <ItemTemplate>
                <h3 class="tintucnoibo">
                    <a href='<%# progressTitle(Eval("LocalArticleCategoryName")) + "-ctt-" + Eval("LocalArticleCategoryID") + ".aspx" %>'>
                        <%# Eval("LocalArticleCategoryName") %></a></h3>
                <asp:HiddenField runat="server" ID="hdnLocalArticleCategoryID" Value='<%#Eval("LocalArticleCategoryID") %>' />
                <asp:ListView ID="ListView2" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a href='<%# progressTitle(Eval("LocalArticleTitle")) + "-tt-" + Eval("LocalArticleID") + ".aspx" %>'>
                            <%# Eval("LocalArticleTitle") %>
                        </a></li>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <ul class="tintucnoibo">
                            <li><span>Đang cập nhật.</span> </li>
                        </ul>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <ul class="tintucnoibo">
                            <span runat="server" id="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LocalArticleSelectAll"
                    TypeName="TTLib.LocalArticle">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" DefaultValue="1" />
                        <asp:Parameter Name="EndRowIndex" Type="String" DefaultValue="5" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="LocalArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:ControlParameter ControlID="hdnLocalArticleCategoryID" Name="LocalArticleCategoryID"
                            PropertyName="Value" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </ItemTemplate>
            <EmptyDataTemplate>
                <div class="ttnbchitiet">
                    <h3 class="tintucnoibo">
                        Đang cập nhật.</h3>
                </div>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="LocalArticleCategorySelectAll"
            TypeName="TTLib.LocalArticleCategory">
            <SelectParameters>
                <asp:Parameter Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
