<%@ Page Title="Sign Up for a New Account at Planet Wrox" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
    <MailDefinition BodyFileName="~/App_Data/SignUpConfirmation.txt" Subject="Your New Account at PlanetWrox.com">
    </MailDefinition>
    <WizardSteps>
      <asp:CreateUserWizardStep runat="server" />
      <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
  </asp:CreateUserWizard>
</asp:Content>
