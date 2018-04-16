<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="New.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><ul></HeaderTemplate>

        <ItemTemplate>
           <div class="products">
               <ul>
                   <li>
                       <div class="product">
                           <a href="~/Product.aspx" runat="server" class="img">
                               <img src="023634446.jpg" /></a>

                           <a href="<%# Eval("ProductID", "Product.aspx?Id={0}") %>">
                               <%#Eval("Product_Name") %></a>
                           <div>$5.00/each</div>
                           <a href="#" class="cart">Add to Cart</a>
                       </div>
                   </li>
                   <li>
                       <div class="product">
                           <a href="~/Product.aspx" runat="server" class="img">
                               <img src="023634446.jpg" /></a>

                           <a href="<%# Eval("ProductID", "Product.aspx?Id={0}") %>">
                               <%#Eval("Product_Name") %></a>
                           <div>$5.00/each</div>
                           <a href="#" class="cart">Add to Cart</a>
                       </div>
                   </li>
                   <li>
                       <div class="product">
                           <a href="~/Product.aspx" runat="server" class="img">
                               <img src="023634446.jpg" /></a>

                           <a href="<%# Eval("ProductID", "Product.aspx?Id={0}") %>">
                               <%#Eval("Product_Name") %></a>
                           <div>$5.00/each</div>
                           <a href="#" class="cart">Add to Cart</a>
                       </div>
                   </li>
                   <li>
                       <div class="product">
                           <a href="~/Product.aspx" runat="server" class="img">
                               <img src="023634446.jpg" /></a>

                           <a href="<%# Eval("ProductID", "Product.aspx?Id={0}") %>">
                               <%#Eval("Product_Name") %></a>
                           <div>$5.00/each</div>
                           <a href="#" class="cart">Add to Cart</a>
                       </div>
                   </li>
                </ul>
                   </li>
               
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
    <div class="products">
        <ul>
            <li>
       	 <div class="product">
                 <a href ="~/Product.aspx" runat="server" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="~/Product.aspx" runat="server" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            
       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>
<li>
       	 <div class="product">
                 <a href ="#" class="img"><img src="023634446.jpg" /></a>
                 
                 <a href="#" class="name">Fruity</a>
                 <div>$5.00/each</div>
                 <a href="#" class="cart">Add to Cart</a>
                 </div>
            

       </li>


        </ul>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626493_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Table_Product]"></asp:SqlDataSource>
    </div>
</asp:Content>
