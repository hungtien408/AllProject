<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="gio-hang.aspx.cs" Inherits="gio_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="assets/js/number-only.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--head-->
    <div class="head">
        <!--title-->
        <h1 class="title">
            Giỏ hàng
        </h1>
        <!--site-->
        <div class="site">
            <a id="A1" href="~/" runat="server">Trang chủ</a> &raquo; <span class="title-site">Giỏ
                hàng</span>
        </div>
        <div class="clr">
        </div>
    </div>
    <div class="clr">
    </div>
    <div class="box-shopping-cart">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True"
                    OnItemCommand="ListView1_ItemCommand" OnDataBound="ListView1_DataBound">
                    <ItemTemplate>
                        <tr class="border-top-product-cart">
                            <td>
                                <span class="img-shopping-cart">
                                    <img id="Img2" runat="server" src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/thumbs/" + Eval("ImageName") : "~/assets/images/acc-img-1.jpg" %>' />
                                </span>
                            </td>
                            <td style="width: 50%;">
                                <asp:Label ID="lblProductName" CssClass="lblproductname-color" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                <%--<asp:Label ID="lblProductCode" Visible='<%# string.IsNullOrEmpty(Eval("Tag").ToString()) ? false : true %>'
                                    runat="server" Text='<%# "(" + Eval("Tag") + ")" %>'></asp:Label>--%>
                               <%-- <p>
                                    <asp:Label ID="lblColor" Visible='<%# string.IsNullOrEmpty(Eval("Color").ToString()) ? false : true %>'
                                        runat="server" Text='<%# "- Màu sắc: " + Eval("Color") %>'></asp:Label>
                                </p>--%>
                               <%-- <p>
                                    <asp:Label ID="lblProductColorName" Visible='<%# string.IsNullOrEmpty(Eval("Length").ToString()) ? false : true %>'
                                        runat="server" Text='<%# "- Kích thước: " + Eval("Length") %>'></asp:Label>
                                </p>--%>
                            </td>
                            <td align="center">
                                <asp:ImageButton ID="btnDelete" CssClass="vam" ToolTip="Xóa" ValidationGroup="ShoppingCart"
                                    ImageUrl="~/assets/images/icon_delete.gif" CommandName="Remove" runat="server" />
                            </td>
                            <td align="center" style="width: 10%;">
                                <span class="vam">
                                    <%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ','))%>
                                </span>
                            </td>
                            <td align="center" style="width: 10%;">
                                <asp:TextBox AutoPostBack="true" ID="txtQuantity" CssClass="txtdathang vam" Width="40px"
                                    onkeypress="return numeralsOnly(event)" runat="server" Text='<%# Eval("Quantity") %>'
                                    OnTextChanged="txtQuantity_TextChanged"></asp:TextBox>
                                <asp:HiddenField ID="hdnQuantity" runat="server" Value='<%# Eval("Quantity") %>' />
                                <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                <asp:HiddenField ID="hdnShopingCartID" Value='<%# Container.DataItemIndex + 1 %>'
                                    runat="server" />
                            </td>
                            <td align="center" style="width: 20%;">
                                <span class="vam">
                                    <%# string.Format("{0:##,###.##}", Convert.ToInt16(Eval("Quantity")) * Convert.ToDouble(string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price"))).Replace('.', '*').Replace(',', '.').Replace('*', ',')%>
                                </span>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <div class="note">
                            Chưa có sản phẩm trong giỏ hàng của bạn! <a href="san-pham.aspx">Mua sản phẩm</a>.
                        </div>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table class="shopping-cart" cellpadding="0" cellspacing="0">
                            <tr class="shopping-cart-header">
                                <th class="delete">
                                    &nbsp;
                                </th>
                                <th class="delete">
                                    Sản phẩm
                                </th>
                                <th>
                                    &nbsp;
                                </th>
                                <th>
                                    Giá
                                </th>
                                <th>
                                    Số lượng
                                </th>
                                <th class="delete">
                                    Thành tiền
                                </th>
                            </tr>
                            <tr>
                                <td runat="server" id="itemPlaceholder">
                                </td>
                            </tr>
                        </table>
                        <div class="bg-button-shopping-cart">
                            <p class="btn-update-cart fl">
                                <asp:Button ID="btnUpdate" Visible="false" CssClass="btn-update-shopping-cart" runat="server"
                                    Text="Cập nhật" />
                                <span class="btn-buying"><a href="san-pham.aspx">Mua thêm</a> </span><span class="btn-buying">
                                    <a href="thanh-toan.aspx">Thanh toán</a> </span>
                                <%--<asp:Button ID="btnCheckOut" CssClass="bt-Gui" runat="server" Text="Thanh toán" />--%>
                                <%--<asp:Button ID="Button1" runat="server" Text="Button" />--%>
                            </p>
                            <p class="fr text-total-price">
                                <asp:HiddenField ID="hdnSubTotal" runat="server" />
                                <b>Tổng tiền (VND)</b>: <span class="total-price">
                                    <asp:Label ID="lblSubTotal" runat="server"></asp:Label></span>
                            </p>
                            <div class="clr">
                            </div>
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Cart" TypeName="ShoppingCart">
                </asp:ObjectDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
