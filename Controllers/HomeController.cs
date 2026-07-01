using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP04_Album_Sisro_Moguelevsky.Models;

namespace TP04_Album_Sisro_Moguelevsky.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        BD Album = new BD();
        list<string> figurita = Album.ObtenerFiguritas();
        Random rnd = new Random();
        string seleccionada = figurita[rnd.Next(0,figurita.Count)];
        ViewBag.Figurita = seleccionada;
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
