<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="thanh-toan.aspx.cs" Inherits="gio_hang" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <link href="assets/styles/contact3.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--head-->
    <div class="head">
        <!--title-->
        <h1 class="title">
            Thanh toán
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
                                <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
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
                            Chưa có sản phẩm trong Thanh toán của bạn! <a href="san-pham.aspx">Mua sản phẩm</a>.
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
                                <span class="btn-buying"><a href="gio-hang.aspx">Sửa đơn hàng</a> </span>
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
    <asp:Panel ID="Panel1" runat="server" CssClass="insert-visible">
        <asp:ValidationSummary ID="ValidationAddAddressBook" ShowMessageBox="true" ShowSummary="false"
            runat="server" CssClass="validation_summary" ValidationGroup="AddressBook" />
        <!--sendmail map-->
        <div class="box-contact">
            <div class="send-mail">
                <h2 class="title-c">
                    thông tin đăng ký</h2>
                <div class="input-1">
                    <label class="lb-name">
                        Họ Tên: <span class="red-color">*</span></label>
                    <asp:TextBox CssClass="input-text corner" ID="txtHoTen" runat="server">                    
                    </asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtHoTen_TextBoxWatermarkExtender" runat="server"
                        Enabled="True" TargetControlID="txtHoTen" WatermarkText="-- Nhập họ tên --">
                    </asp:TextBoxWatermarkExtender>
                    <br />
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                        Display="None" ValidationGroup="AddressBook" ControlToValidate="txtHoTen" ErrorMessage="Họ Tên: Thông tin bắt buộc!"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="input-1">
                    <label class="lb-name">
                        Địa chỉ: <span class="red-color">*</span></label>
                    <asp:TextBox CssClass="input-text corner" ID="txtAddress" runat="server">                    
                    </asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtAddress_TextBoxWatermarkExtender" runat="server"
                        Enabled="True" TargetControlID="txtAddress" WatermarkText="-- Nhập địa chỉ --">
                    </asp:TextBoxWatermarkExtender>
                    <br />
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator6" runat="server"
                        Display="None" ValidationGroup="AddressBook" ControlToValidate="txtHoTen" ErrorMessage="Địa chỉ: Thông tin bắt buộc!"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        
                <div class="input-1">
                    <label class="lb-name">
                        Điện thoại: <span class="red-color">*</span></label>
                    <asp:TextBox CssClass="input-text corner" ID="txtPhone" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtPhone_TextBoxWatermarkExtender" runat="server"
                        Enabled="True" TargetControlID="txtPhone" WatermarkText="-- Nhập số điện thoại --">
                    </asp:TextBoxWatermarkExtender>
                    <br />
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator8" Display="None"
                        runat="server" ControlToValidate="txtPhone" ValidationGroup="AddressBook" ErrorMessage="Điện thoại: Thông tin bắt buộc!"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="input-1">
                    <label class="lb-name">
                        Email: <span class="red-color">*</span></label>
                    <asp:TextBox CssClass="input-text corner" ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender" runat="server"
                        Enabled="True" TargetControlID="txtEmail" WatermarkText="-- Nhập Email --">
                    </asp:TextBoxWatermarkExtender>
                    <br />
                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator2"
                        runat="server" ValidationGroup="AddressBook" ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator9" runat="server"
                        ValidationGroup="AddressBook" ControlToValidate="txtEmail" ErrorMessage="Email: Thông tin bắt buộc!"
                        Display="None" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="input-1">
                    <label class="lb-name">
                        Ghi Chú:</label>
                    <asp:TextBox CssClass="text-area corner" ID="txtNoiDung" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtNoiDung_TextBoxWatermarkExtender" runat="server"
                        Enabled="True" TargetControlID="txtNoiDung" WatermarkText="-- Nhập ghi chú --">
                    </asp:TextBoxWatermarkExtender>
                    
                </div>
                <div class="input-1">
                    <label class="lb-inden-codes">
                        Mã xác nhận: <span class="red-color">*</span></label>
                    <div class="codes">
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtVerifyCode" runat="server" CssClass="input-text-2 corner"></asp:TextBox>
                                <br />
                                <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="AddressBook"
                                    runat="server" Display="Dynamic" ErrorMessage="+ Mã an toàn: không chính xác.">
                                    <CaptchaImage RenderImageOnly="True" Width="155" />
                                </asp:RadCaptcha>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="input-1">
                    
                            <asp:Button ID="btnAddToCart" CssClass="bnt-button corner" runat="server" Text="Gửi mail"
                                ValidationGroup="AddressBook" OnClick="btnAddToCart_Click" />
                       
                </div>
                <div class="input-1">
                    <asp:Label runat="server" ID="lblMessage" ForeColor="red"></asp:Label>
                </div>
            </div>
        </div>
     
    </asp:Panel>
</asp:Content>
