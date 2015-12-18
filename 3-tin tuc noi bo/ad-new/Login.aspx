<%@ Page Title="" Language="C#" MasterPageFile="~/ad/template/admin.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="ad_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" Width="100%" RenderOuterTable="false">
        <LayoutTemplate>
            <asp:Panel ID="Panel1" DefaultButton="LoginButton" runat="server">
                <span class="failureNotification">
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                </span>
                <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="LoginUserValidationGroup" />
                <div class="accountInfo">
                    <fieldset class="login">
                        <legend>Sign In</legend>
                        <p>
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                            <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                CssClass="failureNotification" ErrorMessage="UserName Required." Display="Dynamic"
                                ToolTip="Enter UserName." ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic" ID="PasswordRequired" runat="server"
                                ControlToValidate="Password" CssClass="failureNotification" ErrorMessage="Password Required."
                                ToolTip="Enter Password." ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <div class="submitButton">
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Sign In" ValidationGroup="LoginUserValidationGroup"
                                    CssClass="button" />
                            </div>
                            <asp:CheckBox ID="RememberMe" runat="server" />
                            <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                            <br />
                            <div class="clear" align="right" style="padding-top: 5px">
                                <a href="RecoveryPassword.aspx">Forgot password?</a>
                            </div>
                        </p>
                    </fieldset>
                    <p class="submitButton">
                    </p>
                </div>
            </asp:Panel>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
