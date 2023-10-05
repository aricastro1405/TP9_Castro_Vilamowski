using System.Data.SqlClient;
using Dapper;
public static class BD{
    private static string _connectionString=@"Server=localhost; Database=TPElecciones_Castro_Vilamowski; Trusted_Connection=True;";
    public static Usuario LoginUser(string UN, string PW){
        Usuario MiUsuario = null;
        string SQL = "SELECT UserName, Contrasenia FROM Usuario WHERE UserName = @pUN AND Contrasenia = @pPW";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            MiUsuario=db.QueryFirstOrDefault<Usuario>(SQL, new {pUN = UN, pPW = PW});
        }
     return MiUsuario;   
    }
     public static Usuario BuscarUser(string UN){
        Usuario Usuario = null;
        string SQL = "SELECT UserName, Contrasenia FROM Usuario WHERE UserName = @pUN";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            Usuario=db.QueryFirstOrDefault<Usuario>(SQL, new {pUN = UN});
        }
     return Usuario;   
    }
    public static Usuario RegistroUser(Usuario user){
        string SQL = "INSERT INTO Usuario(IdUsuario, UserName, Contrasenia, Nombre, Email, Telefono) VALUES (@pIdUsuario, @pUserName, @pContrasenia, @pNombre, @pEmail, @pTelefono)";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(SQL, new {pIdUsuario = user.IdUsuario, pUserName = user.UserName, pContrasenia = user.Contrasenia, pNombre = user.Nombre, pEmail = user.Email, pTelefono = user.Telefono});
        }
        return user;
    }
    public static void ActualizarContrasenia(string contraNueva, string UsernAme){
        string SQL = "UPDATE Usuario SET Contrasenia = @pContraNueva WHERE UserName = @pUsernAme";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(SQL, new {pContraNueva = contraNueva, pUsernAme = UserName});
        }
    }
}