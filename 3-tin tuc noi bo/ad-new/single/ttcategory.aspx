<%@ Page Title="" Language="C#" MasterPageFile="~/ad-new/template/admin.master" AutoEventWireup="true"
    CodeFile="ttcategory.aspx.cs" Inherits="ad_single_LocalArticlecategory" %>

<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <link href="../assets/styles/sreenshort.css" rel="stylesheet" type="text/css" />
    <script src="../assets/js/sreenshort.js" type="text/javascript"></script>
    <script type="text/javascript">
        var tableView = null;
        function RowDblClick(sender, eventArgs) {
            sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
        }

        function RowMouseOver(sender, eventArgs) {
            var selectedRows = sender.get_masterTableView().get_selectedItems();
            var elem = $get(eventArgs.get_id());
            if (selectedRows.length > 0)
                for (var i = 0; i < selectedRows.length; i++) {
                    var selectedID = selectedRows[i].get_id();

                    if (selectedID != eventArgs.get_id())
                        elem.className += (" rgSelectedRow");
                }
            else
                elem.className += (" rgSelectedRow");
        }

        function RowMouseOut(sender, eventArgs) {
            var className = "rgSelectedRow";
            var elem = $get(eventArgs.get_id());

            var selectedRows = sender.get_masterTableView().get_selectedItems();

            if (selectedRows.length > 0)
                for (var i = 0; i < selectedRows.length; i++) {
                    var selectedID = selectedRows[i].get_id();
                    if (selectedID != eventArgs.get_id())
                        removeCssClass(className, elem);
                }
            else
                removeCssClass(className, elem);
        }

        function removeCssClass(className, element) {
            element.className = element.className.replace(className, "").replace(/^\s+/, '').replace(/\s+$/, '');
        }

        function pageLoad(sender, args) {
            tableView = $find("<%= RadGrid1.ClientID %>").get_masterTableView();
        }

        function RadComboBox1_SelectedIndexChanged(sender, args) {
            tableView.set_pageSize(sender.get_value());
        }

        function changePage(argument) {
            tableView.page(argument);
        }

        function RadNumericTextBox1_ValueChanged(sender, args) {
            tableView.page(sender.get_value());
        }

        //On insert and update buttons click temporarily disables ajax to perform upload actions
        function conditionalPostback(sender, eventArgs) {
            var theRegexp = new RegExp("\.lnkUpdate$|\.lnkUpdateTop$|\.PerformInsertButton$", "ig");
            if (eventArgs.get_eventTarget().match(theRegexp)) {
                var upload = $find(window['UploadId']);

                //AJAX is disabled only if file is selected for upload
                if (upload.getFileInputs()[0].value != "") {
                    eventArgs.set_enableAjax(false);
                }
            }
            else if (eventArgs.get_eventTarget().indexOf("ExportToExcelButton") >= 0 || eventArgs.get_eventTarget().indexOf("ExportToWordButton") >= 0 || eventArgs.get_eventTarget().indexOf("ExportToPdfButton") >= 0)
                eventArgs.set_enableAjax(false);
        }

        function validateRadUpload(source, e) {
            e.IsValid = false;

            var upload = $find(source.parentNode.getElementsByTagName('div')[0].id);
            var inputs = upload.getFileInputs();
            for (var i = 0; i < inputs.length; i++) {
                //check for empty string or invalid extension
                if (upload.isExtensionValid(inputs[i].value)) {
                    e.IsValid = true;
                    break;
                }
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="Server">
    <h3 class="mainTitle">
        <img alt="" src="../assets/images/category.png" class="vam" />
        Danh Mục Tuyển Dụng</h3>
    <br />
    <asp:RadAjaxPanel ID="RadAjaxPanel1" runat="server" ClientEvents-OnRequestStart="conditionalPostback">
        <asp:Label ID="lblError" ForeColor="Red" runat="server"></asp:Label>
        <asp:RadGrid ID="RadGrid1" runat="server" Culture="vi-VN" AllowMultiRowSelection="True"
            DataSourceID="ObjectDataSource1" GridLines="Horizontal" AutoGenerateColumns="False"
            AllowAutomaticDeletes="True" ShowStatusBar="True" OnItemCommand="RadGrid1_ItemCommand"
            OnItemDataBound="RadGrid1_ItemDataBound" CssClass="grid" 
            AllowAutomaticUpdates="True" CellSpacing="0">
            <ClientSettings EnableRowHoverStyle="true">
                <Selecting AllowRowSelect="True" />
                <ClientEvents OnRowDblClick="RowDblClick" />
                <Resizing AllowColumnResize="true" ClipCellContentOnResize="False" />
            </ClientSettings>
            <ExportSettings IgnorePaging="true" OpenInNewWindow="true" ExportOnlyData="true"
                Excel-Format="ExcelML" Pdf-AllowCopy="true">
            </ExportSettings>
            <MasterTableView CommandItemDisplay="TopAndBottom" DataSourceID="ObjectDataSource1"
                InsertItemPageIndexAction="ShowItemOnCurrentPage" AllowMultiColumnSorting="True"
                DataKeyNames="LocalArticleCategoryID">
                <%--<CommandItemSettings ShowExportToExcelButton="True" ShowExportToPdfButton="True"
                    ShowExportToWordButton="True"></CommandItemSettings>--%>
                <PagerStyle AlwaysVisible="true" Mode="NextPrevNumericAndAdvanced" PageButtonCount="10"
                    FirstPageToolTip="Trang đầu" LastPageToolTip="Trang cuối" NextPagesToolTip="Trang kế"
                    NextPageToolTip="Trang kế" PagerTextFormat="Đổi trang: {4} &nbsp;Trang <strong>{0}</strong> / <strong>{1}</strong>, Kết quả <strong>{2}</strong> - <strong>{3}</strong> trong <strong>{5}</strong>."
                    PageSizeLabelText="Kết quả mỗi trang:" PrevPagesToolTip="Trang trước" PrevPageToolTip="Trang trước" />
                <CommandItemTemplate>
                    <div class="command">
                        <div style="float: right">
                            <asp:Button ID="ExportToExcelButton" runat="server" CssClass="rgExpXLS" CommandName="ExportToExcel"
                                AlternateText="Excel" ToolTip="Xuất ra Excel" />
                            <asp:Button ID="ExportToPdfButton" runat="server" CssClass="rgExpPDF" CommandName="ExportToPdf"
                                AlternateText="PDF" ToolTip="Xuất ra PDF" />
                            <asp:Button ID="ExportToWordButton" runat="server" CssClass="rgExpDOC" CommandName="ExportToWord"
                                AlternateText="Word" ToolTip="Xuất ra Word" />
                        </div>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="InitInsert" Visible='<%# !RadGrid1.MasterTableView.IsItemInserted %>'
                            CssClass="item"><img class="vam" alt="" src="../assets/images/add.png" /> Thêm mới</asp:LinkButton>|
                        <%--<asp:LinkButton ID="LinkButton3" runat="server" CommandName="PerformInsert" Visible='<%# RadGrid1.MasterTableView.IsItemInserted %>'><img class="vam" alt="" src="../assets/images/accept.png" /> Thêm</asp:LinkButton>&nbsp;&nbsp;
                        <asp:LinkButton ID="btnCancel" runat="server" CommandName="CancelAll" Visible='<%# RadGrid1.EditIndexes.Count > 0 || RadGrid1.MasterTableView.IsItemInserted %>'><img class="vam" alt="" src="../assets/images/delete-icon.png" /> Hủy</asp:LinkButton>&nbsp;&nbsp;--%>
                        <asp:LinkButton ID="btnEditSelected" runat="server" CommandName="EditSelected" Visible='<%# RadGrid1.EditIndexes.Count == 0 %>'
                            CssClass="item"><img width="12px" class="vam" alt="" src="../assets/images/tools.png" /> Sửa</asp:LinkButton>|
                        <%--<asp:LinkButton ID="btnUpdateEdited" runat="server" CommandName="UpdateEdited" Visible='<%# RadGrid1.EditIndexes.Count > 0 %>'><img class="vam" alt="" src="../assets/images/accept.png" /> Cập nhật</asp:LinkButton>&nbsp;&nbsp;--%>
                        <asp:LinkButton ID="LinkButton1" OnClientClick="javascript:return confirm('Xóa tất cả dòng đã chọn?')"
                            runat="server" CommandName="DeleteSelected" CssClass="item"><img class="vam" alt="" title="Xóa tất cả dòng được chọn" src="../assets/images/delete-icon.png" /> Xóa</asp:LinkButton>|
                        <asp:LinkButton ID="LinkButton6" runat="server" CommandName="QuickUpdate" Visible='<%# RadGrid1.EditIndexes.Count == 0 %>'
                            CssClass="item"><img class="vam" alt="" src="../assets/images/accept.png" /> Sửa nhanh</asp:LinkButton>|
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="RebindGrid" CssClass="item"><img class="vam" alt="" src="../assets/images/reload.png" /> Làm mới</asp:LinkButton>
                    </div>
                    <div class="clear">
                    </div>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </CommandItemTemplate>
                <Columns>
                    <asp:GridClientSelectColumn FooterText="CheckBoxSelect footer" HeaderStyle-Width="1%"
                        UniqueName="CheckboxSelectColumn" />
                    <asp:GridTemplateColumn HeaderText="Tên danh mục" DataField="LocalArticleCategoryName">
                        <ItemTemplate>
                            <div class='<%#"catlevel level" +  Eval("Level") %>' style='padding-left: <%# string.IsNullOrEmpty(Eval("Level").ToString()) ? 0 : Convert.ToInt32(Eval("Level")) * 10 %>px'>
                                <asp:Label ID="lblLocalArticleCategoryName" runat="server" Text='<%# Eval("LocalArticleCategoryName")%>'
                                    Font-Bold='<%# Eval("ParentID").ToString() == "0" ? true : false %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridBoundColumn HeaderText="ID" DataField="LocalArticleCategoryID" SortExpression="LocalArticleCategoryID">
                    </asp:GridBoundColumn>
                    <asp:GridTemplateColumn>
                        <ItemTemplate>
                            <div style="line-height: 10px; padding: 0 10px 0 10px;">
                                <asp:LinkButton ID="lnkUpOrder" rel='<%# Eval("LocalArticleCategoryID") %>' runat="server"
                                    OnClick="lnkUpOrder_Click">
                                    <img alt="" title="Lên 1 cấp" src="../assets/images/up-arrow.gif" />
                                </asp:LinkButton>
                                <asp:LinkButton ID="lnkDownOrder" rel='<%# Eval("LocalArticleCategoryID") %>' runat="server"
                                    OnClick="lnkDownOrder_Click">
                                    <img alt="" title="Xuống 1 cấp" src="../assets/images/down-arrow.gif" />
                                </asp:LinkButton>
                            </div>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Cấp độ" DataField="Level">
                        <ItemTemplate>
                            <asp:Label ID="lblLevel" runat="server" Text='<%# Eval("Level") %>' Font-Bold='<%# Eval("ParentID").ToString() == "0" ? true : false %>'></asp:Label>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Danh mục cấp trên" DataField="ParentCategoryName">
                        <ItemTemplate>
                            <asp:Label ID="lblParentCategoryName" runat="server" Text='<%# Eval("ParentCategoryName")%>'
                                Font-Bold='<%# Eval("ParentID").ToString() == "0" ? true : false %>'></asp:Label>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Xem trên menu" DataField="IsShowOnMenu">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkIsShowOnMenu" runat="server" Checked='<%# Eval("IsShowOnMenu") == DBNull.Value ? false : Convert.ToBoolean(Eval("IsShowOnMenu"))%>'
                                CssClass="checkbox" />
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Xem trên trang chủ" DataField="IsShowOnHomePage">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkIsShowOnHomePage" runat="server" Checked='<%# Eval("IsShowOnHomePage") == DBNull.Value ? false : Convert.ToBoolean(Eval("IsShowOnHomePage"))%>'
                                CssClass="checkbox" />
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Hiển thị" DataField="IsAvailable">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkIsAvailable" runat="server" Checked='<%# Eval("IsAvailable") == DBNull.Value ? false : Convert.ToBoolean(Eval("IsAvailable"))%>'
                                CssClass="checkbox" />
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                    <asp:GridTemplateColumn HeaderText="Ảnh">
                        <ItemTemplate>
                            <asp:Panel ID="Panel1" runat="server" Visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'>
                                <a class="screenshot" rel='../../res/productcategory/<%# Eval("ImageName") %>'>
                                    <img alt="" src="../assets/images/photo.png" />
                                </a>
                                <asp:LinkButton ID="lnkDeleteImage" runat="server" rel='<%#  Eval("LocalArticleCategoryID") + "#" + Eval("ImageName") %>'
                                    CommandName="DeleteImage" OnClientClick="return confirm('Xóa ảnh này ?')">
                            <img alt="Xóa ảnh" title="Xóa ảnh" src="../assets/images/delete-icon.png" />
                                </asp:LinkButton>
                                <asp:HiddenField ID="hdnImageName" runat="server" Value='<%# Eval("ImageName") %>' />
                            </asp:Panel>
                        </ItemTemplate>
                    </asp:GridTemplateColumn>
                </Columns>
                <EditFormSettings EditFormType="Template">
                    <FormTemplate>
                        <asp:Panel ID="Panel1" runat="server" DefaultButton="lnkUpdate">
                            <h3 class="searchTitle">
                                Thông Tin Danh Mục Tuyển Dụng</h3>
                            <table class="search">
                                <tr>
                                    <td class="left" valign="top">
                                        Ảnh đại diện
                                    </td>
                                    <td>
                                        <asp:HiddenField ID="hdnLocalArticleCategoryID" runat="server" Value='<%# Eval("LocalArticleCategoryID") %>' />
                                        <asp:HiddenField ID="hdnImageName" runat="server" Value='<%# Eval("ImageName") %>' />
                                        <asp:RadUpload ID="FileImageName" runat="server" ControlObjectsVisibility="None"
                                            Culture="vi-VN" Language="vi-VN" InputSize="69" AllowedFileExtensions=".jpg,.jpeg,.gif,.png" />
                                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Sai định dạng ảnh (*.jpg, *.jpeg, *.gif, *.png)"
                                            ClientValidationFunction="validateRadUpload" Display="Dynamic"></asp:CustomValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left" valign="top">
                                        Danh mục cấp trên
                                    </td>
                                    <td>
                                        <asp:RadComboBox Filter="Contains" ID="ddlParent" runat="server" DataSourceID='<%# (Container is GridEditFormInsertItem) ? "ObjectDataSource1" : "ObjectDataSource2" %>'
                                            DataTextField="LocalArticleCategoryName" DataValueField="LocalArticleCategoryID" OnDataBound="DropDownList_DataBound"
                                            Width="504px">
                                        </asp:RadComboBox>
                                      <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="LocalArticleCategoryForEditSelectAll"
                                            TypeName="TTLib.LocalArticleCategory">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="hdnLocalArticleCategoryID" Name="LocalArticleCategoryID" PropertyName="Value"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left" valign="top">
                                        Tên danh mục
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLocalArticleCategoryName" runat="server" Text='<%# (Container is GridEditFormInsertItem) ? "" : Eval("LocalArticleCategoryName").ToString().Remove(0, Convert.ToInt32(Eval("Level"))) %>'
                                            Width="500px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left" colspan="2">
                                        <asp:CheckBox ID="chkIsShowOnMenu" runat="server" CssClass="checkbox" Text=" Xem trên menu"
                                            Checked='<%# (Container is GridEditFormInsertItem) ? true : (Eval("IsShowOnMenu") == DBNull.Value ? false : Convert.ToBoolean(Eval("IsShowOnMenu"))) %>' />
                                        &nbsp;&nbsp;
                                        <asp:CheckBox ID="chkIsShowOnHomePage" runat="server" CssClass="checkbox" Text=" Xem trên trang chủ"
                                            Checked='<%# (Container is GridEditFormInsertItem) ? true : (Eval("IsShowOnHomePage") == DBNull.Value ? false : Convert.ToBoolean(Eval("IsShowOnHomePage"))) %>' />
                                        &nbsp;&nbsp;
                                        <asp:CheckBox ID="chkIsAvailable" runat="server" CssClass="checkbox" Text=" Hiển thị"
                                            Checked='<%# (Container is GridEditFormInsertItem) ? true : (Eval("IsAvailable") == DBNull.Value ? false : Convert.ToBoolean(Eval("IsAvailable"))) %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="padding-left: 10px">
                                        <hr />
                                        <asp:LinkButton ID="lnkUpdate" runat="server" CausesValidation="True" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'>
                                            <img alt="" title="Cập nhật" src="../assets/images/ok.png" class="vam" /> <%# (Container is GridEditFormInsertItem) ? "Thêm" : "Cập nhật" %>
                                        </asp:LinkButton>
                                        &nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" CommandName="Cancel">
                                            <img alt="" title="Hủy" src="../assets/images/cancel.png" class="vam" /> &nbsp;&nbsp;Hủy
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:RadInputManager ID="RadInputManager2" runat="server">
                            <asp:NumericTextBoxSetting AllowRounding="False" Culture="vi-VN" EmptyMessage="Thứ tự ..."
                                Type="Number" DecimalDigits="0">
                                <TargetControls>
                                    <asp:TargetInput ControlID="txtPriority" />
                                </TargetControls>
                            </asp:NumericTextBoxSetting>
                        </asp:RadInputManager>
                    </FormTemplate>
                </EditFormSettings>
            </MasterTableView>
            <HeaderStyle Font-Bold="True" />
            <HeaderContextMenu EnableImageSprites="True" CssClass="GridContextMenu GridContextMenu_Default">
            </HeaderContextMenu>
        </asp:RadGrid>
        <asp:RadInputManager ID="RadInputManager1" runat="server">
            <asp:TextBoxSetting EmptyMessage="Tên danh mục ...">
                <TargetControls>
                    <asp:TargetInput ControlID="txtLocalArticleCategoryName" />
                </TargetControls>
            </asp:TextBoxSetting>
        </asp:RadInputManager>
    </asp:RadAjaxPanel>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="LocalArticleCategoryDelete"
        SelectMethod="LocalArticleCategorySelectAll" 
        TypeName="TTLib.LocalArticleCategory" UpdateMethod="LocalArticleCategoryUpdate"
        InsertMethod="LocalArticleCategoryInsert">
        <DeleteParameters>
            <asp:Parameter Name="LocalArticleCategoryID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LocalArticleCategoryName" Type="String" />
            <asp:Parameter Name="LocalArticleCategoryNameEn" Type="String" />
            <asp:Parameter Name="ConvertedLocalArticleCategoryName" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ParentID" Type="String" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsAvailable" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LocalArticleCategoryID" Type="String" />
            <asp:Parameter Name="LocalArticleCategoryName" Type="String" />
            <asp:Parameter Name="LocalArticleCategoryNameEn" Type="String" />
            <asp:Parameter Name="ConvertedLocalArticleCategoryName" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="ParentID" Type="String" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            <asp:Parameter Name="IsAvailable" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:RadProgressManager ID="RadProgressManager1" runat="server" />
    <asp:RadProgressArea ID="ProgressArea1" runat="server" Culture="vi-VN" DisplayCancelButton="True"
        HeaderText="Đang tải" Skin="Office2007" Style="position: fixed; top: 50% !important;
        left: 50% !important; margin: -93px 0 0 -188px;" />
          
</asp:Content>
