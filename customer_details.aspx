<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customer_details.aspx.cs" Inherits="customer_details" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            height: 20px;
            width: 276px;
        }
        .style4
        {
            height: 15px;
            width: 276px;
        }
        .style5
        {
            width: 492px;
        }
        .style6
        {
            height: 15px;
            width: 492px;
        }
        .style7
        {
            height: 20px;
            width: 492px;
        }
        .style8
        {
            height: 21px;
            width: 276px;
        }
        .style9
        {
            width: 492px;
            height: 21px;
        }
        .style10
        {
            width: 276px;
        }
    </style>
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Details</h2>


    <table >
        <tr>
            <td class="style3" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpetrolbunk" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Name</td>
            <td class="style5">
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Only Charcters allowed" 
                    ValidationExpression="[a-z\sA-Z]*" ForeColor="Red"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8">
                Card Number</td>
            <td class="style9">
                <asp:TextBox ID="txtcardno" runat="server" MaxLength="10" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtcardno" ErrorMessage="Enter card number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtcardno" ErrorMessage="Only number" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style10">
                DOB</td>
            <td class="style5">
                <asp:TextBox ID="txtdob" runat="server" Width="200px"></asp:TextBox>
                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdob" Format="dd-MM-yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="Enter DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4" >
                Gender</td>
            <td class="style6">
                <asp:RadioButton ID="rdm" runat="server" Text="MALE" GroupName="h" />
                <asp:RadioButton ID="rdf" runat="server" Text="FEMALE" GroupName="h" />

                <br />

                <br />

            </td>
        </tr>
        <tr>
            <td class="style10">
                <br />
                Phone</td>
            <td class="style5">
                <asp:TextBox ID="txtphone" runat="server" ontextchanged="txtphone_TextChanged" 
                    Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Enter phone number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Only number" 
                    ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
            &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style3">
                <br />
                User Name</td>
            <td class="style7">
                <asp:TextBox ID="txtuname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Enter user name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style3">
                <br />
                Password</td>
            <td class="style7">
                <asp:TextBox ID="txtpswrd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpswrd" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style3">
                <br />
                Confirm Password</td>
            <td class="style7">
                <asp:TextBox ID="txtcp" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtcp" ErrorMessage="Enter password to comfirm" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpswrd" ControlToValidate="txtcp" 
                    ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
       
        <tr>
            <td class="style3">
                <br />
                Email ID</td>
            <td class="style7">
                <asp:TextBox ID="txtemailid" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter Email ID" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
       
        <tr>
            <td class="style10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style5">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" Height="30px" Width="80px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" CausesValidation="False" Height="30px" 
                    Width="80px" />
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" CausesValidation="False" Height="30px" Width="80px" />
                <asp:Button ID="btndlt" runat="server" onclick="btndlt_Click" Text="Delete" 
                    CausesValidation="False" Height="30px" Width="80px" />
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
       
        <tr>
            <td class="style2" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" Width="756px" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-Width="150px" >

<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                           <asp:BoundField DataField="card_no" HeaderText="Card No" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <asp:BoundField DataField="DOB" HeaderText="DOB" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                             <asp:BoundField DataField="gender" HeaderText="Gender" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <asp:BoundField DataField="phone" HeaderText="Phone" 
                            ItemStyle-Width="150px" >

                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("customer_id") %>' />
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
        <tr>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

