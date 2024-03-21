<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stock.aspx.cs" Inherits="stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Stock</h2>
    <p>
        Fuel type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddfueltype" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddfueltype_SelectedIndexChanged">
            <asp:ListItem>Select Any</asp:ListItem>
            <asp:ListItem>Petrol</asp:ListItem>
            <asp:ListItem>Diesel</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ddfueltype" ErrorMessage="Enter fuel type" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="txtqty" runat="server" Text="0"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
</asp:Content>

