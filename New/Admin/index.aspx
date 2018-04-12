<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="New.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to admin panel</h1>
    <h2>Default page for admin</h2>

    <br />
    <br />

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />

    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="List Page" />

    <br />

</asp:Content>
