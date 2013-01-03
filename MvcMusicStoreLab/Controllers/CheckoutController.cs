using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcMusicStoreLab.Models;

namespace MvcMusicStoreLab.Controllers
{

    [Authorize]
    public class CheckoutController : Controller
    {

        public const string PROMOCODE = "FREE";
        
        //declare a field to hold an instance of MusicStoreEntities
        MusicStoreEntities storeDB = new MusicStoreEntities();

        // GET: /Checkout/AddressAndPayment
        // AddressAndPayment (GET method) will display a form to allow the user to enter their information.
        public ActionResult AddressAndPayment()
        {
            //need to prepare State List into Viewbag
            //IEnumerable<string> states = storeDB.Database.SqlQuery<string>("SELECT abbr as Name from dbo.State").ToList();
            //ViewData["StateList"] = new SelectList(states);

            //ViewData["StateList"] = new SelectList(storeDB.Database.SqlQuery<State>("SELECT abbr from dbo.State").ToList(), "abbr", "abbr");

            return View();//just return the checkout form (view)
        }

        //Post: AddressAndPayment (POST method) will validate the input and process the order.

        [HttpPost]
        public ActionResult AddressAndPayment(FormCollection values)
        {
            var order = new Order();
            TryUpdateModel(order);

            try
            {
                if (string.Equals(values["Promocode"], PROMOCODE, StringComparison.OrdinalIgnoreCase) == false)  //
                {
                    return View(order);
                }

                //start processing
                else
                {
                    order.Username = User.Identity.Name;
                    order.OrderDate = System.DateTime.Now;
                    order.Country = "USA";  //default to US for now

                    storeDB.Orders.Add(order);  // add order first
                    storeDB.SaveChanges();

                    //order detail
                    var cart = ShoppingCart.GetCart(this.HttpContext);
                    int orderID = cart.CreateOrder(order);
                    return RedirectToAction("Complete", new { id = orderID });

                }
            }
            catch
            {
                //Invalid - rediplay order with errors
                return View(order);
            }
            
        }

        //Complete: Complete will be shown after a user has successfully finished the checkout process. This view will include the user’s order number, as confirmation.
        //GET: /Checkout/Complete

        public ActionResult Complete(int id)
        {

            //validate customer - kind of strange to retrieve back from database and compare...
            bool isValidCustomer=storeDB.Orders.Any(o=>o.OrderID==id &&
                    o.Username==User.Identity.Name);

            if ( isValidCustomer)
            {
                return View(id);
            }
            else 
            { 
                return View("Error");
            }
        }

    }
}
