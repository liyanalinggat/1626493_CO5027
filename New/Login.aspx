<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="New.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
    <br />

    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
    <br />


    <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
    <br />


    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    <br />
    <br />


    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    
    
    


</asp:Content>
