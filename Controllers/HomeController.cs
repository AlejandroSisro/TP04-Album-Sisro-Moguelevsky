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
    BD bd = new BD();
    ViewBag.Jugadores = bd.ObtenerJugadores();
    return View();
}
    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel
        {
            RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier
        });
    }
}

