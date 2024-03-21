<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="billings.aspx.cs" Inherits="billings" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   
   
    <style type="text/css">
        .style1
        {
            width: 369px;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            width: 369px;
            height: 21px;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            width: 369px;
            height: 25px;
        }
        .style6
        {
            height: 41px;
        }
        .style7
        {
            width: 369px;
            height: 41px;
        }
        .style8
        {
            height: 15px;
        }
        .style9
        {
            width: 369px;
            height: 15px;
        }
    </style>
   
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Billing</h2>


    <table>
        <tr>
            <td class="style6">
                Card Number<br />
                <br />
            </td>
            <td class="style7">
                <asp:TextBox ID="txtcardno" runat="server" MaxLength="10" AutoPostBack="True" 
                    ontextchanged="txtcardno_TextChanged" Width="200px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcardno" ErrorMessage="Enter card no" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcardno" ValidationExpression="[0-9]*" 
                    ErrorMessage="Only number" ForeColor="Red">Only card number</asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Balance<br />
                <br />
            </td>
            <td class="style7">
                <asp:TextBox ID="txtbal" runat="server" Enabled="False" Width="200px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Liters</td>
            <td class="style1">
                <asp:TextBox ID="txtliters" runat="server" AutoPostBack="True" MaxLength="3" Width="200px" 
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtliters" ErrorMessage="Enter only number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtliters" ErrorMessage="Enter number" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Type</td>
            <td class="style1" >
                <asp:DropDownList ID="ddltype" runat="server" 
                    onselectedindexchanged="ddltype_SelectedIndexChanged" AutoPostBack="True" 
                    >
                    <asp:ListItem>Select any</asp:ListItem>
                    <asp:ListItem>Petrol</asp:ListItem>
                    <asp:ListItem>Desil</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter type" ControlToValidate="ddltype" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
                <br />
                <br />
            </td>
        </tr>
       
        <tr>
            <td class="style4">
                Amount</td>
            <td class="style5">
                <asp:TextBox ID="txtamount" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtamount" ErrorMessage="Enter amount" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date</td>
            <td class="style5">
                <asp:TextBox ID="txtdate" runat="server" Width="200px" ></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate" Format="dd-MM-yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Enter date" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Bunk Name</td>
            <td class="style1">
                <asp:DropDownList ID="ddlbname" runat="server">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Todays Rate</td>
            <td class="style3">
                <asp:TextBox ID="txttoday" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txttoday" ErrorMessage="Enter todays rate" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Phone No</td>
            <td class="style3">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Enter phone number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" CausesValidation="False" Height="30px" 
                    Width="80px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" Height="30px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Remaining Balance</td>
            <td class="style1">
                <asp:TextBox ID="txtremaining" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    Width="493px">
                    <AlternatingRowStyle BackColor="White" />
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

