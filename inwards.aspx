<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inwards.aspx.cs" Inherits="inwards" %>
 
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            width: 167px;
        }
        .style4
        {
            height: 21px;
            width: 167px;
        }
        .style5
        {
            height: 25px;
            width: 167px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Inwards</h2>


    <table>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Vehicle Number</td>
            <td >
                <asp:TextBox ID="txtvnumber" runat="server" MaxLength="20" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter vehicle no" ControlToValidate="txtvnumber" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
 
                <br />
 
                <br />
 
            </td>
        </tr>
        <tr>
            <td class="style3">
                Date</td>
            <td >
                <asp:TextBox ID="txtdate" runat="server" Width="200px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Enter date" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3" >
                Source</td>
            <td >
                    <asp:DropDownList ID="ddlsource" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlsource_SelectedIndexChanged">
                    <asp:ListItem>select any</asp:ListItem>
                    <asp:ListItem>HP</asp:ListItem>
                        <asp:ListItem>INDIAN</asp:ListItem>
                </asp:DropDownList>
                    <br />
                    <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Liters</td>
            <td class="style2" >
                <asp:TextBox ID="txtliters" runat="server" MaxLength="3" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtliters" ErrorMessage="Enter liters" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="txtliters" ErrorMessage="Enter number" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Type</td>
            <td >
                <asp:DropDownList ID="ddltype" runat="server" 
                    onselectedindexchanged="ddltype_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>select any</asp:ListItem>
                    <asp:ListItem>Petrol</asp:ListItem>
                    <asp:ListItem>Diesel</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Enter type" ControlToValidate="ddltype" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
       
        <tr>
            <td class="style5">
                Amount</td>
            <td class="style1">
                <asp:TextBox ID="txtamnt" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Commission</td>
            <td>
                <asp:TextBox ID="txtcms" runat="server" AutoPostBack="True" 
                    ontextchanged="txtcms_TextChanged" MaxLength="1" Width="200px"></asp:TextBox>
                %&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtcms" ErrorMessage="Enter commission" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                Net Total</td>
            <td class="style1">
                <asp:TextBox ID="txtnt" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                <asp:Button ID="tnsubmit" runat="server" Text="Submit" 
                    onclick="tnsubmit_Click" Height="30px" Width="80px" />
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" Height="30px" Width="80px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" Height="30px" Width="80px" />
                <asp:Button ID="btndlt" runat="server" onclick="btndlt_Click" Text="Delete" 
                    Height="30px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="716px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                     <%--   <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />--%>
                       
                        <asp:BoundField DataField="v_number" HeaderText="Vehicle NO" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="source" HeaderText="Source" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                          <asp:BoundField DataField="liters" HeaderText="Liters" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                          <asp:BoundField DataField="type" HeaderText="Type" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                           <asp:BoundField DataField="amount" HeaderText="Amount" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                          <%--  <asp:BoundField DataField="commission" HeaderText="Commission" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>--%>
                             <asp:BoundField DataField="net_amount" HeaderText="Net Total" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <%--  <asp:BoundField DataField="petrol_bunk" HeaderText="Petrol Bunk" 
                            ItemStyle-Width="150px" >

                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>--%>

                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("inwards_id") %>' />
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

