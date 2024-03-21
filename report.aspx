<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REPORT</h2>
<table class="style1">
        <tr>
            <td class="style3">
                <asp:RadioButton ID="rdin" runat="server" GroupName="a" Text="INWARDS" 
                    oncheckedchanged="rdin_CheckedChanged" Checked="True" />
            </td>
            <td>
                <asp:RadioButton ID="rdout" runat="server" GroupName="a" Text="OUTWARDS" 
                    oncheckedchanged="rdout_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                DATE</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" AutoPostBack="True" 
                    ontextchanged="txtdate_TextChanged" Width="200px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                    GridLines="Horizontal" Height="145px" Width="672px">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Total Amount:</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

