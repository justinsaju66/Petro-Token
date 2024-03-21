<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin1.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .style1
        {
            width: 468px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change Password</h2>


    <table>
        <tr>
            <td>
                Current Password</td>
            <td class="style1">
                <asp:TextBox ID="txtcp" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcp" ErrorMessage="Enter current password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                New Password</td>
            <td class="style1">
                <asp:TextBox ID="txtnp" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnp" ErrorMessage="Enter new password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Login Password</td>
            <td class="style1">
                <asp:TextBox ID="txtlp" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtlp" ErrorMessage="Enter login password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="btncp" runat="server" Text="Change Password" 
                    onclick="btncp_Click" Height="30px" Width="129px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" Height="30px" 
                    Width="80px" />
            </td>
        </tr>
    </table>
</asp:Content>

