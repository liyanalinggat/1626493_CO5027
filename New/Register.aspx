<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="New.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
    <br />

    <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
    <br />
    <br />

    
    <asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
    <br />

    
    <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    
    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
    <br />
    <br />

    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
</asp:Content>
