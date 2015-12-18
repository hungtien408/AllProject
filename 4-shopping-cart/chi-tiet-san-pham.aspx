<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="chi-tiet-san-pham.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:FormView ID="FormView2" DataSourceID="ObjectDataSource1" Width="100%" runat="server"
        EnableModelValidation="True">
        <ItemTemplate>
         <h2 class="detail-name">
                    <a>
                        <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </a>
                </h2>
            <section style="margin-bottom: 5px;" id="site"><a id="A1" href="~/" runat="server">Trang chủ &raquo;</a><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-dm-" + Eval("CategoryID") + ".aspx" %>'><%# Eval("ProductCategoryName") %></a>&raquo; <span><%# Eval("ProductName") %> </span></section>
            <section id="wrap-detail">
        <article id="detail-img"><img id="Img2" alt='' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : 
true %>' runat="server" /></article> 
        <article id="detail-content">
            <h2 class="pro-name"><%# Eval("ProductName") %></h2>
            <section class="description"><%# Eval("Content") %></section>
        </article>
    </section>
            <input id="hdnPrice" type="hidden" runat="server" class="hdnPrice" value='<%# Eval("Price") %>' />
            <input id="hdnSavePrice" type="hidden" runat="server" class="hdnSavePrice" value='<%# Eval("SavePrice") %>' />
            <asp:HiddenField ID="hdnIsSaleOff" runat="server" Value='<%# Eval("IsSaleOff") %>' />
            <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
            <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
        
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <p class="more-buy">
                        <asp:LinkButton ID="lnkbtnShoppingCart" runat="server" OnClick="lnkbtnShoppingCart_Click">Mua hàng</asp:LinkButton>
                    </p>
                </ContentTemplate>
            </asp:UpdatePanel>
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>


    <h2 style="float: left; margin-bottom: 20px; width: 100%;" class="title-about">
        Sản Phẩm Liên Quan</h2>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2" GroupItemCount="3"
        EnableModelValidation="True">
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td>
                <article class="box-product">
                       

                        <p class='<%# Eval("IsNew").ToString() != "True" ? "hidden" : "pro-new"%>'><img src="assets/images/icon-new.png" alt=""/></p>
                        <a href='<%# progressTitle(Eval("ProductName")) + "-pr-" + Eval("ProductID") + ".aspx" %>' class="product-img"><img id="Img1" alt='' src='<%# "~/res/product/thumbs/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : 
true %>' runat="server" /></a>
                        <h2 class="product-name"><a href='<%# progressTitle(Eval("ProductName")) + "-pr-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></h2>
                      
                        <p class="code">Liên Hệ</p>
                    </article>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table style="float: left;" class="tb-product" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr id="groupPlaceholderContainer" runat="server">
                        <td id="groupPlaceholder" runat="server">
                        </td>
                    </tr>
                </tbody>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="ProductSameSelectAll"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:Parameter Name="RerultCount" Type="String" DefaultValue="8" />
            <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
