import 'package:flutter/material.dart';
import 'package:mimpedir/tela_cad_restaurante.dart';
import 'package:mimpedir/tela.edit_restaurante.dart';
import 'restaurante.dart'
import 'banco/restaurante_dao.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  List<Restaurante> restaurantes = [];

  @override
  void initState() {
    super.initState();
    carregarRestaurantes();
  }

  Future<void> carregarRestaurantes() async {
    final lista = await RestauranteDAO.listarTodos();
    setState(() {
      restaurantes = lista;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de restaurantes"),
      actions: [
        TextButton(onPressed: (){
           MaterialPageRoute(builder: (context) => TelaCadRestaurantes());
        },
        child: Icon(Icons.add))
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: restaurantes.length,
          itemBuilder: (context, index) {
            final r = restaurantes[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(r.nome ?? 'Sem nome'),
                subtitle: Text('ID: ${r.codigo}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        //TODO: Editar restaurante
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        //TODO:Excluir restaurante
                      },
                    ), //IconButton
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        MaterialPageRoute(builder: (context) => TelaCadRestaurante());
          },
          child: Icon(Icons.add)
      ),
    );
  }
}




