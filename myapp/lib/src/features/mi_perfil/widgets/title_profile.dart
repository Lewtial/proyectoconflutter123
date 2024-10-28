import 'package:flutter/material.dart';

class TitleProfile extends StatelessWidget {
  final Color? backgroundColor;

  const TitleProfile({
    super.key,
     this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final descriptionStyle = textTheme.bodyMedium?.copyWith(
        color: backgroundColor == const Color.fromARGB(255, 130, 145, 228)
            ? const Color.fromARGB(255, 182, 177, 177)
            : color.primary);

    return Column(
      children: [
        Text(
          "Denilson Alberto Céspedes Alcalá",
          style: TextStyle(
              color: backgroundColor == const Color.fromARGB(255, 130, 145, 228)
                  ? const Color.fromARGB(255, 182, 177, 177)
                  : const Color.fromARGB(255, 130, 145, 228),
              fontSize: 30.0),
        ),
        Text(
          'Proyecto de Flutter',
          style: textTheme.titleLarge?.copyWith(
              color: backgroundColor == const Color.fromARGB(255, 130, 145, 228)
                  ? const Color.fromARGB(255, 182, 177, 177)
                  : color.secondary),
        ),
        Text('Grupo Doragon', style: descriptionStyle),
      ],
    );
  }
}