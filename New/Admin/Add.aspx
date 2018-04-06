<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="New.Admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource" DefaultMode="Insert">
    <EditItemTemplate>
        ProductID:
        <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
        <br />
        Product_Name:
        <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Desc:
        <asp:TextBox ID="Product_DescTextBox" runat="server" Text='<%# Bind("Product_Desc") %>' />
        <br />
        Product_Qty:
        <asp:TextBox ID="Product_QtyTextBox" runat="server" Text='<%# Bind("Product_Qty") %>' />
        <br />
        Product_Price:
        <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ProductID:
        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
        <br />
        Product_Name:
        <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Desc:
        <asp:TextBox ID="Product_DescTextBox" runat="server" Text='<%# Bind("Product_Desc") %>' />
        <br />
        Product_Qty:
        <asp:TextBox ID="Product_QtyTextBox" runat="server" Text='<%# Bind("Product_Qty") %>' />
        <br />
        Product_Price:
        <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ProductID:
        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
        <br />
        Product_Name:
        <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Desc:
        <asp:Label ID="Product_DescLabel" runat="server" Text='<%# Bind("Product_Desc") %>' />
        <br />
        Product_Qty:
        <asp:Label ID="Product_QtyLabel" runat="server" Text='<%# Bind("Product_Qty") %>' />
        <br />
        Product_Price:
        <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("Product_Price") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
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
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
