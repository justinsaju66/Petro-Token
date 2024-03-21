<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recharge.aspx.cs" Inherits="recharge" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            width: 306px;
        }
        .style4
        {
            width: 121px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Recharge</h2>
    <p id=" ">Card No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;
        <asp:TextBox ID="txtcardno" runat="server" MaxLength="10" Width="200px" 
            AutoPostBack="True" ontextchanged="txtcardno_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtcardno" ErrorMessage="Enter Card No" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="txtcardno" ErrorMessage="Only Number" 
            ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>&nbsp;</p>
    <p>Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
        <asp:TextBox ID="txtamount" runat="server" MaxLength="5" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtamount" ErrorMessage="Enter amount" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="txtamount" ErrorMessage="Enter amount" 
            ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>&nbsp;</p>
 <table>
        <tr>
            <td class="style4">
                Date&nbsp;  </td>
            <td class="style1">
                <asp:TextBox ID="txtdate" runat="server" Height="20px" Width="200px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdate" format="dd-MM-yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Phone</td>
            <td class="style1">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" 
                    ontextchanged="txtphone_TextChanged" Width="200px" BackColor="#CCFF33" 
                    ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Enter phone" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Only number" ControlToValidate="txtphone" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" Height="30px" Width="80px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" Height="30px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

