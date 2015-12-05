<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="dang-ky.aspx.cs" Inherits="dang_ky" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>YUASA TRADING VIETNAM</title><meta name="description" content="YUASA TRADING VIETNAM" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-main main-form">
        <div id="site"><a id="A1" href="~/default.aspx" runat="server" class="home">Trang chủ</a><span>Đăng ký</span></div>
        <div class="wrap-form main-835">
            <h1 class="title">Đăng ký</h1>
            <div class="form-box">
                <div class="form-input">
                    <label class="form-lb">Họ tên</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtFullName" CssClass="input-text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                            Display="Dynamic" ValidationGroup="DangKyTV" ControlToValidate="txtFullName" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="form-input">
                            <label class="form-lb">Tên đăng nhập</label>
                            <div class="form-text">
                                <asp:TextBox ID="txtUserName" OnTextChanged="txtUserName_TextChanged" AutoPostBack="true" CssClass="input-text" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="DangKyTV" Display="Dynamic" ControlToValidate="txtUserName" runat="server" ErrorMessage="Thông tin bắt buộc"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtUserName" ValidationGroup="DangKyTV"
                                    Display="Dynamic" ErrorMessage="Tài khoản đã tồn tại!"></asp:CustomValidator>
                                <asp:Label ID="lblUserNameMessage" runat="server" ForeColor="Green"></asp:Label>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="form-input">
                    <label class="form-lb">Email</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtEmail" CssClass="input-text" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator2"
                            runat="server" ValidationGroup="DangKyTV" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator10" runat="server"
                            Display="Dynamic" ValidationGroup="DangKyTV" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Mật khẩu</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="input-text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="DangKyTV" Display="Dynamic" ControlToValidate="txtPassword" runat="server" ErrorMessage="Thông tin bắt buộc"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Nhập lại mật khẩu</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtConfirmPassword" TextMode="Password" CssClass="input-text" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Xác nhận mật khẩu sai."></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="DangKyTV" Display="Dynamic" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="Thông tin bắt buộc"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Điện thoại</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtPhone" CssClass="input-text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" Display="Dynamic"
                            runat="server" ControlToValidate="txtPhone" ValidationGroup="DangKyTV" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator7"
                            runat="server" ValidationGroup="DangKyTV" ControlToValidate="txtPhone" ErrorMessage="Vui lòng nhập số!"
                            ValidationExpression="^[0-9]+$" Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Địa chỉ</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtAddress" CssClass="input-text" runat="server"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" Display="Dynamic"
                            runat="server" ControlToValidate="txtAddress" ValidationGroup="DangKyTV" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Quận/Huyện</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtDistrict" CssClass="input-text" runat="server"></asp:TextBox>
                     <%--   <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator8" Display="Dynamic"
                            runat="server" ControlToValidate="txtDistrict" ValidationGroup="DangKyTV" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Tỉnh/Thành Phố</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtCity" CssClass="input-text" runat="server"></asp:TextBox>
                      <%--  <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator9" Display="Dynamic"
                            runat="server" ControlToValidate="txtCity" ValidationGroup="DangKyTV" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Ghi chú</label>
                    <div class="form-text">
                        <asp:TextBox ID="txtNotes" CssClass="input-area" runat="server"
                            TextMode="MultiLine"></asp:TextBox>
                      <%--  <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" Display="Dynamic"
                            runat="server" ControlToValidate="txtNotes" ValidationGroup="DangKyTV" ErrorMessage="Thông tin bắt buộc!"
                            ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>
                <div class="form-input">
                    <label class="form-lb">Mã an toàn</label>
                    <div class="form-text">
                        <div class="codes">
                            <asp:TextBox ID="txtVerifyCode" CssClass="input-codes" runat="server"></asp:TextBox>
                            <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="DangKyTV"
                                runat="server" Display="Dynamic"
                                ErrorMessage="Mã xác nhận: không chính xác." CaptchaLinkButtonText="Refesh"
                                CssClass="capcha" EnableRefreshImage="True">
                                <CaptchaImage RenderImageOnly="True" Width="125" Height="35" BackgroundNoise="High" BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" />
                            </asp:RadCaptcha>
                        </div>
                    </div>
                </div>
                <div class="form-input">
                    <div class="form-btn">
                        <a href="dang-ky.aspx"></a>
                        <asp:Button ID="btnDangKy" CssClass="button-btn" OnClick="btnDangKy_Click" runat="server" Text="Đăng ký" ValidationGroup="DangKyTV" />
                        
                    </div>
                </div>
            </div>
            <div class="form-right">
                <h3>Bạn đã có tài khoản? </h3>
                <div class="form-input">
                    <span>Hãy đăng nhập tại đây</span>
                   
                    <asp:Button ID="Button1" PostBackUrl="~/dang-nhap.aspx" CssClass="button-btn" runat="server" Text="Đăng nhập" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopupBox" runat="Server">
</asp:Content>

