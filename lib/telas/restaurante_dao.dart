import 'package:mimpedir/banco/database_helper.dart';
import 'package:mimpedir/restaurante.dart';
import '../tipo.dart';

class RestauranteDAO{
  static Future<List<Restaurante>> listarTodos() async {
    final db = await DatabaseHelper.getDataBase();
    final resultado = await db.query('tb_restaurante');

    return resultado.map((mapa){
      return Restaurante(
        codigo: mapa['cd_restuarante'] as int,
        nome: mapa['nm_restaurante'] as String
      );
    }).toList();
  }
}