<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="MenuEdit.aspx.cs" Inherits="Leieve_Tea_Project.BackEndPages.MenuEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="boday-content">
        <div class="container">
            <asp:ListView ID="MenuListView" runat="server" DataSourceID="MenuODS" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF; color: #284775;">
                        <td></td>
                        <td>
                            <asp:Label Text='<%# Eval("MenuItemID") %>' runat="server" ID="MenuItemIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("SellingPrice") %>' runat="server" ID="SellingPriceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                        <td>
                            <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("MenuItemID") %>' runat="server" ID="MenuItemIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("SellingPrice") %>' runat="server" ID="SellingPriceTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" /></td>
                        <td>
                            <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("MenuItemID") %>' runat="server" ID="MenuItemIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("SellingPrice") %>' runat="server" ID="SellingPriceTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" /></td>
                        <td>
                            <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF; color: #333333;">
                        <td></td>
                        <td>
                            <asp:Label Text='<%# Eval("MenuItemID") %>' runat="server" ID="MenuItemIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("SellingPrice") %>' runat="server" ID="SellingPriceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                        <td>
                            <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">MenuItemID</th>
                                        <th runat="server">Description</th>
                                        <th runat="server">SellingPrice</th>
                                        <th runat="server">CategoryID</th>
                                        <th runat="server">Active</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager runat="server" ID="DataPager2">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                        <td></td>
                        <td>
                            <asp:Label Text='<%# Eval("MenuItemID") %>' runat="server" ID="MenuItemIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("SellingPrice") %>' runat="server" ID="SellingPriceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                        <td>
                            <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:ObjectDataSource runat="server" ID="MenuODS" DataObjectTypeName="LeieveTea.Data.Entities.MenuItem" InsertMethod="Add_MenuItem" OldValuesParameterFormatString="original_{0}" SelectMethod="MenuItems_List" TypeName="LeieveTeaSystem.BLL.MenuController"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
 