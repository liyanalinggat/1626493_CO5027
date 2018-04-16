<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="New.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
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

        </ItemTemplate>
        </asp:FormView>
    <div class="single-item">
  <div class="left-set">
      <img src="023634446.jpg" />
  </div>
  <div class="right-set">
    <div class="name">French Lavender</div>
   
    <div class="price">Price: $5/each</div>
    <div class="description">
    <p>
        <b>A soothing blend of fresh lavender with hints of amber</b>
        <p>Our skin-softening formula kills 99.9% of germs, 
        while the pocket-friendly design makes it easy to keep hands clean & conditioned when you're on-the-go. 
        Don't forget to add a cute holder, sold separately!
    </p>
    </div>
      <div class="btn">
    <button><p>ADD TO CART</p></button>
          </div>
  </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626493_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Table_Product] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="ID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Qty" runat="server" Text="Quantity"></asp:Label>
        <asp:DropDownList ID="DropDownList" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnPurchase" runat="server" Text="Add to Cart" OnClick="btnPurchase_Click" />
        <br />
        
</div>

</asp:Content>
