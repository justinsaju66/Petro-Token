<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="setting.aspx.cs" Inherits="setting" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 356px;
        }
        .style3
        {
            width: 190px;
            height: 27px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 356px;
            height: 26px;
        }
        .style7
        {
            height: 27px;
        }
        .style8
        {
            width: 356px;
            height: 27px;
        }
        .style9
        {
            height: 29px;
        }
        .style10
        {
            width: 356px;
            height: 29px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setting</h2>
<table>

        <tr>
            <td class="style5">
                Liters&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style6">
                <asp:TextBox ID="txtliters" runat="server" ReadOnly="True" Width="200px">1</asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Amount</td>
            <td class="style8">
                <asp:TextBox ID="txtamount" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtamount" ErrorMessage="Enter amount" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Type</td>
            <td class="style8">
                <asp:DropDownList ID="ddltype" runat="server">
                    <asp:ListItem>select any</asp:ListItem>
                    <asp:ListItem>Petrol</asp:ListItem>
                    <asp:ListItem>Diesel</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter type" ControlToValidate="ddltype" 
                    InitialValue="select any" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Date</td>
            <td class="style10">
                <asp:TextBox ID="txtdate" runat="server" Width="200px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate"  format="yyyy-MM-dd">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Enter date" ForeColor="Red" ></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2">
                <asp:Button ID="txtsubmit" runat="server" Text="Submit" 
                    onclick="txtsubmit_Click" Height="30px" Width="80px" />
                &nbsp;<asp:Button ID="btnclear" runat="server" Text="Clear" onclick="txtclear_Click" 
                    style="height: 26px" Height="30px" Width="80px" />
            &nbsp;<asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" Height="30px" Width="80px" />
&nbsp;<asp:Button ID="btndlt" runat="server" Text="Delete" onclick="btndlt_Click" 
                    Height="30px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="517px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="liters" HeaderText="Liters" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                          <asp:BoundField DataField="amount" HeaderText="Amount" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <asp:BoundField DataField="type" HeaderText="Type" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                              <asp:BoundField DataField="date" HeaderText="Date" 
                            ItemStyle-Width="150px" >
                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("setting_id") %>' />
                            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>


                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

