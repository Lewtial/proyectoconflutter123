import 'package:flutter/material.dart';
import 'package:myapp/src/features/mi_perfil/mi_perfil_pag.dart';
import 'package:myapp/src/features/about_me/sobre_mi_pag.dart';

class BotonesPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Proyecto de Flutter'),
      ),
      body: Center(
        child: Text('Denilson Alberto Céspedes Alcalá'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TitleProfile()),
                );
              },
              child: Text('Inicio'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SobreMiPag()),
                );
              },
              child: Text('Descripción'),
            ),
          ],
        ),
      ),
    );
  }
}
