<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="New.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        Username<asp:TextBox ID="txtRegUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="txtRegUserName" ErrorMessage="please enter the username" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        Password<asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="txtRegPassword" Display="None" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
        <br />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

</asp:Content>
