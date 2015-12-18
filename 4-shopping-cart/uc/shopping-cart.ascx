<%@ Control Language="C#" AutoEventWireup="true" CodeFile="shopping-cart.ascx.cs"
    Inherits="uc_shopping_cart" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <a id="A1" href="~/gio-hang.aspx" class="box-buy" runat="server">
            <asp:Label ID="lblPrice" CssClass="div-shopping buy-1" runat="server" Text="0.000"></asp:Label><span
                class="div-shopping buy-2">Có
                <asp:Label ID="lblSummary" CssClass="title-shopping-cart" runat="server" Text="0"></asp:Label>
                sản phẩm trong giỏ hàng</span> </a>
    </ContentTemplate>
</asp:UpdatePanel>
