<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="New.Admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_Desc" HeaderText="Product_Desc" SortExpression="Product_Desc" />
            <asp:BoundField DataField="Product_Qty" HeaderText="Product_Qty" SortExpression="Product_Qty" />
            <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Edit.aspx?Id={0}" Text="Edit" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Upload Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626493_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Table_Product] WHERE [ProductID] = @original_ProductID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Desc] = @original_Product_Desc) OR ([Product_Desc] IS NULL AND @original_Product_Desc IS NULL)) AND (([Product_Qty] = @original_Product_Qty) OR ([Product_Qty] IS NULL AND @original_Product_Qty IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL))" InsertCommand="INSERT INTO [Table_Product] ([ProductID], [Product_Name], [Product_Desc], [Product_Qty], [Product_Price]) VALUES (@ProductID, @Product_Name, @Product_Desc, @Product_Qty, @Product_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table_Product]" UpdateCommand="UPDATE [Table_Product] SET [Product_Name] = @Product_Name, [Product_Desc] = @Product_Desc, [Product_Qty] = @Product_Qty, [Product_Price] = @Product_Price WHERE [ProductID] = @original_ProductID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Desc] = @original_Product_Desc) OR ([Product_Desc] IS NULL AND @original_Product_Desc IS NULL)) AND (([Product_Qty] = @original_Product_Qty) OR ([Product_Qty] IS NULL AND @original_Product_Qty IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="String" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Product_Desc" Type="String" />
            <asp:Parameter Name="original_Product_Qty" Type="Int32" />
            <asp:Parameter Name="original_Product_Price" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Product_Desc" Type="String" />
            <asp:Parameter Name="Product_Qty" Type="Int32" />
            <asp:Parameter Name="Product_Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Product_Desc" Type="String" />
            <asp:Parameter Name="Product_Qty" Type="Int32" />
            <asp:Parameter Name="Product_Price" Type="Decimal" />
            <asp:Parameter Name="original_ProductID" Type="String" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Product_Desc" Type="String" />
            <asp:Parameter Name="original_Product_Qty" Type="Int32" />
            <asp:Parameter Name="original_Product_Price" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="add page" />
</asp:Content>
