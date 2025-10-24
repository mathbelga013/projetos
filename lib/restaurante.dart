import 'package:mimpedir/usuario.dart';
import 'package:mimpedir/tipo.dart';

class Restaurante {
  int? _codigo;
  String? _nome;
  String? _latitude;
  String? _longitude;
  Usuario? _proprietario;
  Tipo? _culinaria;

  //construtor
  Restaurante(
      {int? codigo, String? nome, String? latitude, String? longitude, Usuario? proprietario, Tipo? culinaria}) {
    _codigo = codigo;
    _nome = nome;
    _latitude = latitude;
    _longitude = longitude;
    _proprietario = proprietario;
    _culinaria = culinaria;
  }

  //getters
  int? get codigo => _codigo;

  String? get nome => _nome;

  String? get latitude => _latitude;

  String? get longitude => _longitude;

  Usuario? get proprietario => _proprietario;

  Tipo? get culinaria => _culinaria;
}
 //setters
set _codigo(int? codigo) => _codigo = codigo;
set _nome(String? nome) => _nome = nome;
set _latitude(String? latitude) => _latitude = latitude;
set _longitude(String? longitude) => _longitude = longitude;
set _proprietario(Usuario? proprietario) => _proprietario = proprietario;
set _culinaria(Tipo? culinaria) => _culinaria = culinaria;
