<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="state.aspx.cs" Inherits="state" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                State Name :
            </td>
            <td>
                <asp:TextBox ID="txtState" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtState" ErrorMessage="Enter State" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" 
                    Height="30px" Width="80px" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" 
                    Height="30px" Width="80px" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" Height="30px" Width="80px" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" Height="30px" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="state_name" HeaderText="State Name" ItemStyle-Width="150px" />
                        
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("state_Id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
