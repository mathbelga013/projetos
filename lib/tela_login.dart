import 'package:flutter/material.dart';
import 'package:mimpedir/tela_home.dart';
import 'banco/usuario_dao.dart';
import 'usuario.dart';


class TelaLogin extends StatelessWidget{
   TelaLogin({super.key});

  Usuario u = Usuario(
    nome: 'teteu013',
    login: 'admin',
    senha: '@teteu123'
  );

   final TextEditingController UsuarioController = TextEditingController();
  final TextEditingController Senhacontroller  = TextEditingController();

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('tela de login: ')),
      body: Padding(padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Usuário'),
              controller: UsuarioController,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
              controller: Senhacontroller,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () async {

              /*if(u.login == UsuarioController.text && u.senha == Senhacontroller.text) {
               //print('deu certo vai abrir outra página');
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaHome())
               );
              }else {
              print('deu errado nao vai abrir outra página');
               */

              final sucesso = await UsuarioDAO.autenticar(UsuarioController.text, Senhacontroller.text);

              if(sucesso){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaHome())
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const  SnackBar(content: Text('Login inválido!!'))
                );
              }

              },child:const Text ('Entrar')),
          ],
        ),
      ),
    ); 
  }

}
