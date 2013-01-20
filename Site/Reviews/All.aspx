<%@ Page Title="All Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="All.aspx.cs" Inherits="About_All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
      <asp:HyperLink ID="HyperLink1" runat="server"
        NavigateUrl='<%# "ViewDetails.aspx?ReviewID=" + Eval("Id").ToString() %>'
        Text='<%# Eval("Title") %>'>
      </asp:HyperLink>
    </ItemTemplate>
  </asp:Repeater>
</asp:Content>

