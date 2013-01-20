<%@ Page Title="Planet Wrox - Mangement - Insert and Update Reviews Hand Coded" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReviewHandCoded.aspx.cs" Inherits="Management_AddEditReviewHandCoded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
    .style1
    {
      width: 100%;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <table class="style1">
    <tr>
      <td>
        <asp:Label ID="Label1" runat="server" AssociatedControlID="TitleText" 
          Text="<u>T</u>itle"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="TitleText" runat="server" AccessKey="T" Width="450px"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label2" runat="server" AssociatedControlID="SummaryText" 
          Text="S<u>u</u>mmary"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="SummaryText" runat="server" AccessKey="U" TextMode="MultiLine" 
          Width="450px"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label3" runat="server" AssociatedControlID="BodyText" 
          Text="<u>B</u>ody"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="BodyText" runat="server" AccessKey="B" TextMode="MultiLine" 
          Width="450px"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label4" runat="server" AssociatedControlID="GenreList" 
          Text="<u>G</u>enre"></asp:Label>
      </td>
      <td>
        <asp:DropDownList ID="GenreList" runat="server" AccessKey="G" 
          DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
          ConnectionString="name=PlanetWroxEntities" 
          DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
          EntitySetName="Genres" Select="it.[Id], it.[Name]">
        </asp:EntityDataSource>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label5" runat="server" AssociatedControlID="Authorized" 
          Text="<u>A</u>uthorized"></asp:Label>
      </td>
      <td>
        <asp:CheckBox ID="Authorized" runat="server" AccessKey="A" />
      </td>
    </tr>
    <tr>
      <td>
        &nbsp;</td>
      <td>
        <asp:Button ID="SaveButton" runat="server" AccessKey="S" Text="Save" 
          onclick="SaveButton_Click" />
      </td>
    </tr>
  </table>
</asp:Content>

