import 'package:flutter/material.dart';
import 'package:mimpedir/tela_home.dart';
import 'usuario.dart';

class TelaLogin extends StatelessWidget{
  TelaLogin({super.key});

  final TextEditingController UsuarioController = TextEditingController();
  final TextEditingController Senhacontroller  = TextEditingController();

  Usuario u = Usuario(
    codigo:1,
    senha: "@teteu123",
    login: 'admin',
    nome:'Administrador'
  );
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data")),
      body: Padding(padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Usuário'),
              controller: UsuarioController,
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
              controller: Senhacontroller
              ,
            ),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: (){

              if(u.login == UsuarioController.text && u.senha == Senhacontroller.text) {
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaHome())
               );
              }else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Login ou Senha inválidos!!"))
                );
              }
            }, child: Text ("Login"))
          ],
        ),
      )
    ); 
  }
}