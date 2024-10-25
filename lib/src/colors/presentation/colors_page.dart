import 'package:flutter/material.dart';
import 'package:x_equis/core/utils/color_util.dart';
import 'package:x_equis/src/colors/data/colors_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorList = ColorsModel.colorsList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colores'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Instrucciones'),
                    content: const Text(
                      'Presiona el icono de audio para escuchar la pronunciación en quechua de cada color.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Entendido'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          final color = colorList[index];

          return Card(
            margin: const EdgeInsets.all(8),
            color: ColorUtil.hexToColor(color.colorHex),
            child: ListTile(
              title: Text(
                color.colorQuechua,
                style: TextStyle(
                  color: color.colorSpanish == 'Blanco' ||
                          color.colorSpanish == 'Amarillo'
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '(${color.colorSpanish})',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: color.colorSpanish == 'Blanco' ||
                          color.colorSpanish == 'Amarillo'
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.audiotrack,
                  color: color.colorSpanish == 'Blanco' ||
                          color.colorSpanish == 'Amarillo'
                      ? Colors.black
                      : Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
