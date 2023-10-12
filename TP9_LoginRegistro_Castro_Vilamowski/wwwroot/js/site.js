// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
function validarContrasenia(){
    let contrasenia = document.getElementById('idcOntrasenia');
    let resultado = document.getElementById('idresultado');
    let specialChars =/[`!@#$%^&*()_\-+=\[\]{};':"\\|,.<>\/?~ ]/;
    let contraValida = (contrasenia.length > 7) && (specialChars.test(contrasenia) == true)
    if (!contraValida){
        resultado.innerHTML="Tu contraseña debe tener, por lo menos, un carácter especial, una letra en mayúscula y al menos 8 caracteres.";
    }
    else{
        resultado.innerHTML = "Contraseña válida";
    }
    return resultado;
}