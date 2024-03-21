<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
  
    <style type="text/css">
        .style1
        {
            width: 408px;
        }
        .style4
        {
            width: 408px;
            height: 17px;
        }
        .style5
        {
            width: 284px;
        }
        .style6
        {
            width: 284px;
            height: 17px;
        }
    </style>
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN</h2>
    &nbsp;<table>
        <tr>
            <td class="style5" >
                User Name&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txtuname" runat="server" Height="16px" Width="200px"></asp:TextBox>
                <br />
                <br />
                </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter user name" ControlToValidate="txtuname" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6" >
                Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                <asp:TextBox ID="txtpswrd" runat="server" TextMode="Password" Height="17px" 
                    Width="200px" ontextchanged="txtpswrd_TextChanged"></asp:TextBox>
                <br />
                </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpswrd" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6" >
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnlogin" runat="server" Text="Login" 
                    onclick="btnlogin_Click" Font-Size="Medium" ForeColor="#6600FF" />
            </td>
            <td class="style1">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/forgotpswrd.aspx" CausesValidation="False">Forgot Password</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

