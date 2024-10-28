import 'package:myapp/src/features/mi_perfil/mi_perfil_pag.dart';
import 'package:myapp/src/features/about_me/sobre_mi_pag.dart';
import 'package:myapp/src/botones_pagina.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BotonesPagina(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color.fromARGB(255, 139, 151, 218)),
      home: const MiPerfilPag(),
      // home: const SobreMiPag(),
    );
  }
}