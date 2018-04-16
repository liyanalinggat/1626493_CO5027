using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            decimal postagePackagingCost = 3.95m;
            decimal Product_Price = 10.00m;
            int Product_Quantity = int.Parse(DropDownList.SelectedValue);
            decimal subTotal = (Product_Quantity * Product_Price);
            decimal total = subTotal + postagePackagingCost;
        }
    }
}