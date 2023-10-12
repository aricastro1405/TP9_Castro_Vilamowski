using Microsoft.AspNetCore.Mvc;

namespace TPBase.Controllers;

public class HomeController : Controller
{
    public IActionResult Login(string UN, string PW)
    {
        ViewBag.usuario=BD.LoginUser(UN,PW);
        if(ViewBag.usuario == null){
             ViewBag.Error = "El usuario o la contraseña es incorrecto.";
            return View("Login");
        }
        return View("Bienvenida");
    }
     [HttpPost]public IActionResult Registro(Usuario usuario)
    {
        ViewBag.uSuario=BD.BuscarUser(usuario.UserName);
        if(ViewBag.uSuario==null){
           BD.RegistroUser(usuario);
            return View("Registro");
        }
        return View("Bienvenida");
    }
    public IActionResult OlvideMiContrasenia(string username, string contranUeva)
    {
        BD.ActualizarContrasenia(contranUeva,username);
        return View("Bienvenida");
    }
}
