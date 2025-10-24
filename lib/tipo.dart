class Tipo {
  int? _codigo;
  String? _nome;

  Tipo({ int? codigo , String? nome,}) {
    _codigo = codigo;
    _nome = nome;
  }
  //getters
  // escrita do get tradicional
  int? get codigo {
    return _codigo;
  }
  String? get nome {
    return _nome;
  }
  //escrita do set no estilo Dart
  set codigo(int? codigo) => _codigo = codigo;
  set nome(String? nome) => _nome = nome;
}