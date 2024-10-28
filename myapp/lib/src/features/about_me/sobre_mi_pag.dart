import 'package:myapp/src/features/about_me/widgets/boton_contacto.dart';
import 'package:myapp/src/features/mi_perfil/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class SobreMiPag extends StatelessWidget {
  const SobreMiPag({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleProfile(),
            SizedBox(height: 25.0),
            Text(
              'Contáctame',
              style: TextStyle(
                color: Color.fromARGB(255, 139, 152, 226),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 25.0),
            BotonContacto(),
          ],
        ),
      ),
    );
  }
}
