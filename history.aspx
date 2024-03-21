<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {            height: 20px;
        }
        .style4
        {
            width: 212px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Search By :
                </td>
            <td class="style3">
                Petrol Bunk&nbsp;
                <asp:DropDownList ID="ddlbname" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlbname_SelectedIndexChanged">
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" Width="852px" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Height="236px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                      
                       
                        <asp:BoundField DataField="bill_no" HeaderText="Bill No" ItemStyle-Width="150px" >

<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                           <asp:BoundField DataField="bunk_name" HeaderText="Bunk Name" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <asp:BoundField DataField="date" HeaderText="Date of payment" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                             <asp:BoundField DataField="liters" HeaderText="Liters" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <asp:BoundField DataField="amount" HeaderText="Amount" 
                            ItemStyle-Width="150px" >

                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>


                         <asp:BoundField DataField="type" HeaderText="Fuel Type" 
                            ItemStyle-Width="150px" >

                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>


                         <asp:BoundField DataField="trate" HeaderText="Todays Rate" 
                            ItemStyle-Width="150px" >

                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("bill_no") %>' />
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
            </td>
        </tr>
    </table>
</asp:Content>

