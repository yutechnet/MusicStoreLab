using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcMusicStoreLab.Models
{
    public class ShoppingCart
    {
        //declare a field to hold an instance of MusicStoreEntities
        MusicStoreEntities storeDB = new MusicStoreEntities();

        string ShoppingCartID { get; set; }

        public const string CartSessionKey = "CartID";

        // We're using HttpContextBase to allow access to cookies.
        public string GetCartId(HttpContextBase context)
        {
            if (context.Session[CartSessionKey] == null)  //no session yet
            {
                //check identity name and use it for value
                if (!string.IsNullOrWhiteSpace(context.User.Identity.Name))
                {
                    context.Session[CartSessionKey] = context.User.Identity.Name;
                }
                else
                {
                    Guid tempCardID = Guid.NewGuid();
                    context.Session[CartSessionKey] = tempCardID.ToString();
                }

            }
            return context.Session[CartSessionKey].ToString();
        }

        //initialize a cart
        public static ShoppingCart GetCart(HttpContextBase context)
        {
            var cart = new ShoppingCart();
            cart.ShoppingCartID = cart.GetCartId(context);
            return cart; 
        }

        // Helper method to simplify shopping cart calls
        public static ShoppingCart GetCart(Controller controller)
        {
            return GetCart(controller.HttpContext);
        }


        //takes an Album as a parameter and adds it to the user’s cart. Since the Cart table tracks quantity for each album
        //, it includes logic to create a new row if needed or just increment the quantity if the user has already ordered one copy of the album.
        public void AddToCart(Album album)
        { 
            //get the matching cart and album instance
            var cartItem = storeDB.Carts.SingleOrDefault(
                    c => c.CartID == ShoppingCartID && c.AlbumID == album.AlbumID);

            if (cartItem == null)
            {
                //create a new cart item
                cartItem = new Cart
                {
                    AlbumID = album.AlbumID,
                    CartID = ShoppingCartID,
                    Count = 1,
                    DateCreated = DateTime.Now
                };
                storeDB.Carts.Add(cartItem);

            }
            else
            { //just increase the count
                cartItem.Count++;
            }

            //save the change to db
            storeDB.SaveChanges();

        }

        //RemoveFromCart takes a Record ID and removes it from the user’s cart. If the user only had one copy of the album in their cart, the row is removed
        //return the actual count after the removal
        public int RemoveFromCart(int id)
        {
            int itemCount = 0;
            var cartItem = storeDB.Carts.Single(
                c => c.CartID == ShoppingCartID && c.RecordID == id);

            if (cartItem != null)
            {
                if (cartItem.Count > 1)
                {
                    cartItem.Count--;
                    itemCount = cartItem.Count;
                }
                else
                {//empty that row
                storeDB.Carts.Remove(cartItem);

                }

                //Save changes
                storeDB.SaveChanges();
            }
            return itemCount;
        }

        //EmptyCart removes all items from a user’s shopping cart.
        public void EmptyCart()
        {
            var cartItems = storeDB.Carts.Where(c => c.CartID == ShoppingCartID);
            foreach (var cartItem in cartItems)
            {
                storeDB.Carts.Remove(cartItem);
            }
            storeDB.SaveChanges();
        }

        //GetCartItems retrieves a list of CartItems for display or processing.
        public List<Cart> GetCartItems()
        {
            return storeDB.Carts.Where(c => c.CartID == ShoppingCartID).ToList();
        }

        //GetCount retrieves a the total number of albums a user has in their shopping cart.
        public int GetCount()
        {
            // Get the count of each item in the cart and sum the quantity up
            int? count = (from cartItems in storeDB.Carts
                         where cartItems.CartID == ShoppingCartID
                         select (int?)cartItems.Count).Sum();
            //return 0 if all entries are null
            return count ?? 0;
               
        }

        //GetTotal calculates the total cost of all items in the cart.
        public decimal GetTotal()
        {
        // Multiply album price by count of that album to get
        // the current price for each of those albums in the cart
        // sum all album price totals to get the cart total
            decimal? total = (from cartItems in storeDB.Carts
            where cartItems.CartID == ShoppingCartID
            select (int?)cartItems.Count * cartItems.Album.Price).Sum();

            return total ?? decimal.Zero;
        }

        //CreateOrder converts the shopping cart to an order during the checkout phase.
        public int CreateOrder(Order order)
        {
            decimal orderTotal = 0;
            var cartItems = GetCartItems();

            foreach (var c in cartItems)
            { 
                var orderDetail = new OrderDetail
                {   AlbumID=c.AlbumID
                    , OrderID=order.OrderID
                    , UnitPrice=c.Album.Price
                    , Quantity=c.Count

                };

                // Set the order total of the shopping cart
                orderTotal += (c.Album.Price * c.Count);

                storeDB.OrderDetails.Add(orderDetail);
            }

            // Set the order's total to the orderTotal count
            order.Total = orderTotal;
            
            // Save the order
            storeDB.SaveChanges();

            // Empty the shopping cart
            EmptyCart();

            // Return the OrderId as the confirmation number
            return order.OrderID;
        }

        // When a user has logged in, migrate their shopping cart to
        // be associated with their username
        public void MigrateCart(string userName)
        {
            var shoppingCart = storeDB.Carts.Where(c => c.CartID == ShoppingCartID);
            foreach (Cart item in shoppingCart)
            {
                item.CartID = userName;
            }
            storeDB.SaveChanges();
        }
    }
}