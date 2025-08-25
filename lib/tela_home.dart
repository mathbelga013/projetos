import 'package:flutter/material.dart';

class TelaHome extends StatelessWidget{
  TelaHome({super.key});

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela Home')),
      body: Center(
        child: Text('Seja bem vindos ao mim Pedir!!!'),
      ),
    );
  }
}