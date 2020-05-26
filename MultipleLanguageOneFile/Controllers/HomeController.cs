using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Localization;
using MultipleLanguageDynamicContent.Concrete;
using MultipleLanguageDynamicContent.Models;
using MultipleLanguageDynamicContent.Operation;
using MultipleLanguageOneFile.Models;

namespace MultipleLanguageOneFile.Controllers
{
    public class HomeController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult MakaleListesi()
        {
            string dil = "";
            MakaleOperation makaleOperation = null;
            List<Makale> makales = new List<Makale>();
            if (HttpContext.Request.Query["culture"].ToString() != null)
            {
                dil = HttpContext.Request.Query["culture"].ToString();
                switch (dil)
                {
                    case "tr-TR":
                        makaleOperation = new MakaleOperation(new TrMakale());
                        break;
                    case "en-US":
                        makaleOperation = new MakaleOperation(new EnMakale());
                        break;
                    default:
                        makaleOperation = new MakaleOperation(new TrMakale());
                        break;
                }
            }
            else
            {
                makaleOperation = new MakaleOperation(new TrMakale());
            }
            makales = makaleOperation.MakaleListele();
            return View(makales);
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
