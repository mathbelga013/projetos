class Usuario{
  int? _codigo;
  String? _nome;
  String? _login;
  String? _senha;

  Usuario({String? nome, int? codigo, String? senha, String? login,}) {
    _senha = senha;
    _codigo = codigo;
    _nome = nome;
    _login = login;
  }
   //getters
  // escrita do get tradicional
 String? getNome() {
   return _nome;
  }
  //escrita do get no estilo dart
String? get nome => _nome;
String? get senha => _senha;
int? get codigo => _codigo;

  //setters
 //escrita dos set tradicional
 set login (String login){
   _login = login;
 }
 //escrita do set no estilo Dart
 set nome(String? nome) => _nome = nome;
 set senha(String? senha) => _senha = senha;
 set codigo(int? codigo) => _codigo = codigo;
}