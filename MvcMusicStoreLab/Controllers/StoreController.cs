using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcMusicStoreLab.Models;

namespace MvcMusicStoreLab.Controllers
{
    public class StoreController : Controller
    {

        //declare a field to hold an instance of MusicStoreEntities
        
        MusicStoreEntities storeDB = new MusicStoreEntities();

        //
        // GET: /Store/
        public ViewResult Index()
        {
            var genres = storeDB.Genres.ToList();
            return View(genres);

        }
        //
        // GET: /Store/Browse
        public ActionResult Browse( string genre)
        {
            var genreModel = storeDB.Genres.Include("Albums").Single(g => g.Name == genre);
            return View(genreModel);
                 
        }
        //
        // GET: /Store/Details
        public ActionResult Details(int Id)
        {
            var album = storeDB.Albums.Find(Id);
            return View(album);
        }

        //Genre menu partial view
        [ChildActionOnly]
        public ActionResult GenreMenu()
        {
            var genres = storeDB.Genres.ToList();
            return PartialView("GenreMenu", genres);
        }
     }
}
