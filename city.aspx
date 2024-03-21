<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="city" %>

<script runat="server">


  
   
  
</script>
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
        {
            width: 119px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City</h2>


    <table class="style1">
        <tr>
            <td class="style3">
                State</td>
            <td class="style4">
                <asp:DropDownList ID="ddlstate" runat="server">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                City Name</td>
            <td>
                <asp:TextBox ID="txtcname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="Enter city " ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
       
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                    CausesValidation="False" Height="30px" Width="80px" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" Height="30px" Width="80px" />
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" Height="30px" Width="80px" />
                <asp:Button ID="btndlt" runat="server" Text="Delete" onclick="btndlt_Click" 
                    Height="30px" Width="80px" />
            </td>
        </tr>
       
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="511px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="city_name" HeaderText="City Name" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="state_name" HeaderText="State Name" 
                            ItemStyle-Width="150px" >
                         
                       
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                         
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("city_id") %>' />
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

