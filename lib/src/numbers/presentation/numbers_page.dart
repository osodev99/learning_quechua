import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:x_equis/src/numbers/data/numbers_model.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final numbersList = NumbersModel.numbersList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Números'),
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
                      'Presiona el icono de audio para escuchar la pronunciación en quechua de cada número.',
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
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          final number = numbersList[index];

          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                number.quechua,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '(${number.spanish})',
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.audiotrack,
                  color: Colors.black,
                ),
                onPressed: () {
                  audioPlayer.setAsset(number.pathAudio);
                  audioPlayer.play();
                },
              ),
              leading: Text(
                number.number.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
