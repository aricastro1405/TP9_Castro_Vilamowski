using Microsoft.AspNetCore.Mvc;

namespace TP9_LoginRegistro_Castro_Vilamowski.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
