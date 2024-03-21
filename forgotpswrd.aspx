<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="forgotpswrd.aspx.cs" Inherits="forgotpswrd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
        <tr>
            <td colspan="2">
                Forgot Password</td>
        </tr>
        <tr>
            <td>
                UserName</td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnrecover" runat="server" Text="Recover" 
                    onclick="btnrecover_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

