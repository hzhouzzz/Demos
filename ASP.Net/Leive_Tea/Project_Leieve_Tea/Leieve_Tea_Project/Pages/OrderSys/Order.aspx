<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Leieve_Tea_Project.Pages.OrderSys.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="~/css/order.css" rel="stylesheet" type="text/css" />
    <h3>Waiting for UX design...</h3>
    <div>
        <asp:Repeater ID="CategoryRepeater" runat="server" ItemType="LeieveTea.Data.DTOs.CategoryDTO" DataSourceID="MenuODS">
            <ItemTemplate>
                <div>
                    <h2><%# Item.Description %></h2>
                    <asp:Repeater ID="MenuItemRepeater" runat="server" DataSource='<%# Item.MenuItems %>' ItemType="LeieveTea.Data.DTOs.MenuItemPOCO">
                        <HeaderTemplate>
                            <table>
                        </HeaderTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                        <ItemTemplate>
                            <tr>
                                <th><%# Item.ItemDescription%></th>
                                <td><i class="glyphicon glyphicon-info-sign"></i></td>
                                <td><%# $"{ Item.Price:C}" %></td>
                                <td>
                                    <asp:LinkButton ID="AddMenuItemLB" runat="server" CommandArgument='<%# Item.Itemid + "," + Item.Price%>' OnCommand="AddMenuItemLB_Command">
                                <i class="glyphicon glyphicon-plus"></i>
                                    </asp:LinkButton></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div>
        <div>
            <asp:Button ID="pllaceOrderButton" runat="server" Text="Confirm" OnClick="pllaceOrderButton_Click" />
        </div>

        <br />
        <br />
        <div style="margin-left: 100px">
            <asp:Label ID="SuntotalLabel" runat="server" Text="Subtotal">Subtotal: </asp:Label>
            <asp:TextBox ID="SubtotalTextBox" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <div style="margin-left: 100px">
            <asp:Label ID="GSTLabel" runat="server" Text="GST">GST: </asp:Label>
            <asp:TextBox ID="GSTTextBox" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <div style="margin-left: 100px">
            <asp:Label ID="PSTLabel" runat="server" Text="PST">PST: </asp:Label>
            <asp:TextBox ID="PSTTextBox" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <div style="margin-left: 100px">
            <asp:Label ID="TotalLabel" runat="server" Text="Subtotal">Total: </asp:Label>
            <asp:TextBox ID="TotalTextBox" runat="server" Enabled="false"></asp:TextBox>
        </div>
    </div>
    <asp:ObjectDataSource runat="server" ID="MenuODS" OldValuesParameterFormatString="original_{0}" SelectMethod="MenuByCategory_list" TypeName="LeieveTeaSystem.BLL.MenuController"></asp:ObjectDataSource>
</asp:Content>





























