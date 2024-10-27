import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:x_equis/core/utils/color_util.dart';
import 'package:x_equis/src/colors/data/colors_model.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({super.key});

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  final audioPlayer = AudioPlayer();

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
                color.quechua,
                style: TextStyle(
                  color:
                      color.spanish == 'Blanco' || color.spanish == 'Amarillo'
                          ? Colors.black
                          : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '(${color.spanish})',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color:
                      color.spanish == 'Blanco' || color.spanish == 'Amarillo'
                          ? Colors.black
                          : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.audiotrack,
                  color:
                      color.spanish == 'Blanco' || color.spanish == 'Amarillo'
                          ? Colors.black
                          : Colors.white,
                ),
                onPressed: () {
                  audioPlayer.setAsset(color.pathAudio);
                  audioPlayer.play();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
