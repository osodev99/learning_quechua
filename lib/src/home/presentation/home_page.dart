import 'package:flutter/material.dart';
import 'package:x_equis/core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aprende quechua'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.colors,
              ),
              child: Card(
                margin: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    'Colores',
                    style: textStyle.displaySmall,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.numbers,
              ),
              child: Card(
                margin: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    'Números',
                    style: textStyle.displaySmall,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.game,
              ),
              child: Card(
                margin: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    'Juego',
                    style: textStyle.displaySmall,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
