<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="_ManagePhotoAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemCreated="ListView1_ItemCreated">
    <InsertItemTemplate>
      <li style="">Description:
        <asp:RequiredFieldValidator ID="reqDesc" ControlToValidate="DescriptionTextBox" runat="server" ErrorMessage="Enter a description." />
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' TextMode="MultiLine" />
        <br />
        ToolTip:
        <asp:RequiredFieldValidator ID="reqTooltip" ControlToValidate="ToolTipTextBox" runat="server" ErrorMessage="Enter a tool tip." />
        <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:CustomValidator ID="cusValImage" ErrorMessage="Select a valid .jpg file." runat="server" />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="False" />
      </li>
    </InsertItemTemplate>
    <ItemTemplate>
      <li style="">Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        <br />
        ToolTip:
        <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
        <br />
        <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' />
        <br />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="False" />
      </li>
    </ItemTemplate>
    <LayoutTemplate>
      <ul class="ItemContainer">
        <li runat="server" id="itemPlaceholder" />
      </ul>
    </LayoutTemplate>
  </asp:ListView>
  <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EntitySetName="Pictures" Where="it.PhotoAlbum.Id = @photoAlbumId" OnInserting="EntityDataSource1_Inserting">
    <WhereParameters>
      <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" Type="Int32" />
    </WhereParameters>
  </asp:EntityDataSource>
</asp:Content>
