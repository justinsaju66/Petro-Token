<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="petrol_bunk.aspx.cs" Inherits="petrol_bunk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Petrol Bunk</h2>
        <tr>
            <td class="style1" >
                Bunk Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
            &nbsp;<td class="style2"><asp:TextBox ID="txtbname" runat="server" 
        Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtbname" ErrorMessage="Enter Petrol Bunk" 
        ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1" >
                <br />
                <br />
                Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
            &nbsp;<td class="style2"><asp:TextBox ID="txtadd" runat="server" 
        Height="76px" TextMode="MultiLine" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtadd" ErrorMessage="Enter Address" 
        ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1" >
                <br />
                <br />
                State</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <td class="style2">
                <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlstate_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1" >
                <br />
                <br />
                City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
            &nbsp;<td class="style2"><asp:DropDownList ID="ddlcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1" >
                <br />
                &nbsp;<br />
                Phone</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txtphno" runat="server" MaxLength="10" 
        Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtphno" ErrorMessage="Enter phone number" 
        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;</td></tr><tr><td class="style1" ><br />
                Password</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td class="style2">
                <asp:TextBox ID="txtpswrd" runat="server" MaxLength="10" 
        TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpswrd" ErrorMessage="Enter Password" 
        ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" >
                <br />
                <br />
                Email id</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;
            <td class="style4">
                <asp:TextBox ID="txtemail" runat="server" MaxLength="50" 
        Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter email id" 
        ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            </td>
        </tr>
        <tr>
            <td class="style1" >
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" Height="30px" Width="80px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" onclick="txtclear_Click" 
                    Text="Clear" CausesValidation="False" Height="30px" 
        Width="80px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" CausesValidation="False" Height="30px" 
        Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndlt" runat="server" onclick="btndlt_Click" Text="Delete" 
                    CausesValidation="False" Height="30px" Width="80px" />
            </td>
            <td class="style2">
                <br />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="661px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="bunk_name" HeaderText="Bunk Name" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="Address" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="city" HeaderText="City" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="state" HeaderText="State" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="phone" HeaderText="Phone" ItemStyle-Width="150px" >
                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("pbunk_id") %>' />
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
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

