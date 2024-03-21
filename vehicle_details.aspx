<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicle_details.aspx.cs" Inherits="vehicle_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vehicle Details</h2>


    <p>
        Customer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList
            ID="DropDownList1" runat="server">
        </asp:DropDownList>
        </p>
    <p>
        &nbsp;</p>
    <p>
        Vehicle No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtvehicleno" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtvehicleno" ErrorMessage="Enter vehicleno" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        Vehicle Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddvehicletype" runat="server">
            <asp:ListItem>Car</asp:ListItem>
            <asp:ListItem>Bike</asp:ListItem>
            <asp:ListItem>Lorry</asp:ListItem>
            <asp:ListItem>Bus</asp:ListItem>
            <asp:ListItem>Scotty</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Enter vehicle type" 
            ControlToValidate="ddvehicletype" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnsbmit" runat="server" Text="Submit" 
            onclick="btnsbmit_Click" Height="30px" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Clear" 
            Height="30px" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnupdate" runat="server" Text="Update" 
            onclick="btnupdate_Click" Height="30px" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndelete" runat="server" Text="Delete" 
            onclick="Button1_Click" Height="30px" Width="80px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnRowCommand="GridView1_RowCommand" Width="614px" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                        <asp:ButtonField CommandName="Select" Text="Select" ButtonType="Button" />
                       
                        <asp:BoundField DataField="customer_id" HeaderText="customer id" ItemStyle-Width="150px" >

<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                          <asp:BoundField DataField="vehicle_no" HeaderText="vehicle no" 
                            ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                            <asp:BoundField DataField="vehicle_type" HeaderText="vehicle type" ItemStyle-Width="150px" >

                       <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                       
                        <asp:TemplateField HeaderText="Name" ItemStyle-Width="150" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("vehicledetails_id") %>' />
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
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

