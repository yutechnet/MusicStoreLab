using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MvcMusicStoreLab.Models;

namespace MvcMusicStoreLab.ViewModels
{
    public class ShoppingCartViewModel
    {
        //hold cart items
        public List<Cart> CartItems { get; set; }

        //hold total price
        public decimal CartTotal { get; set; }

    }
}