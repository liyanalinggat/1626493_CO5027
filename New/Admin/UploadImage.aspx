<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="New.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="CurrentImage" runat="server" />
    <br />
    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="List Page" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
</asp:Content>
