import 'package:myapp/src/features/mi_perfil/widgets/image_qr.dart';
import 'package:myapp/src/features/mi_perfil/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class MiPerfilPag extends StatefulWidget {
  const MiPerfilPag({super.key});

  @override
  State<MiPerfilPag> createState() => _MiPerfilPagState();
}

class _MiPerfilPagState extends State<MiPerfilPag> {
  //creando estado
  Color _backgroundColor = const Color.fromARGB(255, 216, 206, 206);

//funcion para cambiar de color
  void _cambiarBrackgroundColor() {
    setState(() {
      _backgroundColor = (_backgroundColor == Colors.white)
          ? const Color.fromARGB(255, 106, 107, 114)
          : const Color.fromARGB(255, 216, 206, 206);
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 142, 192),
        title: Text(
          'My Profile',
          style: textTheme.titleLarge?.copyWith(color: color.onPrimary),
        ),
      ),
      body: InkWell(
        onTap:
            _cambiarBrackgroundColor, // llamando a la funcion para cambiar de color
        child: Container(
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ImageQr(),
              TitleProfile(
                backgroundColor: _backgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}