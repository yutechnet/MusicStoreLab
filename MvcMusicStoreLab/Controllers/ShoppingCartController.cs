using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcMusicStoreLab.Models;
using MvcMusicStoreLab.ViewModels;

namespace MvcMusicStoreLab.Controllers
{
    public class ShoppingCartController : Controller
    {

        //declare a field to hold an instance of MusicStoreEntities
        MusicStoreEntities storeDB = new MusicStoreEntities();
               
        //
        // GET: /ShoppingCart/
        public ActionResult Index()
        {
            var cart = ShoppingCart.GetCart(this.HttpContext);  //GetCart() is defined as static, and inside it instanciate ShoppingCart()

            var viewModel = new ShoppingCartViewModel
            {
                CartItems = cart.GetCartItems(),
                CartTotal = cart.GetTotal()
            };
            
            return View(viewModel);
        }


        //
        // GET: /Store/AddToCart/5, where id is AlbumID
        public ActionResult AddToCart(int id)
        {
            //retrieve album from database
            var addedAlbum = storeDB.Albums.Single(c => c.AlbumID == id);

            //add to cart
            var cart = ShoppingCart.GetCart(this.HttpContext);
            cart.AddToCart(addedAlbum);

            // Go back to the main store page for more shopping
            return RedirectToAction("Index");
        }

        //
        // AJAX: /ShoppingCart/RemoveFromCart/5, where id is RecordID
        [HttpPost]
        public ActionResult RemoveFromCart(int id)
        {
            var albumName = storeDB.Carts.Single(c => c.RecordID == id).Album.Title;
            
            var cart = ShoppingCart.GetCart(this.HttpContext);
            var itemCount = cart.RemoveFromCart(id);

            // Display the confirmation message
            var results = new ShoppingCartRemoveViewModel
            {
                Message = Server.HtmlEncode(albumName) +
                " has been removed from your shopping cart.",
                CartTotal = cart.GetTotal(),
                CartCount = cart.GetCount(),
                ItemCount = itemCount,
                DeleteID = id
            };
            return Json(results);  //Json format return
        }

        //
        // GET: /ShoppingCart/CartSummary
        [ChildActionOnly]
        public ActionResult CartSummary()
        {
            var cart = ShoppingCart.GetCart(this.HttpContext);
            ViewData["CartCount"] = cart.GetCount();
            return PartialView("CartSummary");
        }

    }
}
