<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="user_creation.aspx.cs" Inherits="user_creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    <style type="text/css">
        .style1
        {
            width: 609px;
        }
        .style2
        {
            height: 27px;
            width: 252px;
        }
        .style3
        {
            width: 609px;
            height: 27px;
        }
        .style4
        {
        }
    </style>
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Creation</h2>
    <table >
        <tr>
            <td class="style4">
                User Name</td>
            <td class="style1">
                <asp:TextBox ID="txtuname" runat="server" Width="200px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                User Type</td>
            <td class="style1" >
                <asp:DropDownList ID="ddlutype" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Petrol bunk</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password</td>
            <td class="style1">
                <asp:TextBox ID="txtpswrd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Confirm</td>
            <td class="style1">
                <asp:TextBox ID="txtcnfrm" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email ID</td>
            <td class="style3">
                <asp:TextBox ID="txtemailid" runat="server" Width="200px"></asp:TextBox>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter email" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter only email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <%-- <tr>
            <td>
                Petrol Bunk</td>
            <td class="style1">
                <asp:DropDownList ID="ddlpb" runat="server">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>--%>
        <tr>
            <td class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style1">
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" Width="80px" Height="30px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" Height="30px" Width="80px" />
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" Height="30px" Width="80px" />
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" Height="30px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                     GridLines="None" Width="550px" >
                     <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="user_name" HeaderText="User Name" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="user_type" HeaderText="User Type" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                         
                           <asp:BoundField DataField="email_id" HeaderText="Email id" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                           
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("user_id") %>' />
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

