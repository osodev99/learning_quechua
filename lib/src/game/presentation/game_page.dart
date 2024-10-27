import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:x_equis/src/colors/data/colors_model.dart';
import 'package:x_equis/src/game/data/question_data.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final questions = QuestionData().getQuestions();
  int index = 0;
  final controller = TextEditingController();

  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final question = questions[index];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego'),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.lightbulb),
        //     onPressed: () {
        //       showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             title: const Text('Ayuda'),
        //             content: Text(
        //               'El audio es un ${question is ColorsModel ? 'color' : 'número'}.',
        //             ),
        //             actions: [
        //               TextButton(
        //                 onPressed: () {
        //                   Navigator.of(context).pop();
        //                 },
        //                 child: const Text('Entendido'),
        //               ),
        //             ],
        //           );
        //         },
        //       );
        //     },
        //   ),
        // ],
      ),
      body: Column(
        children: [
          Text(
            'Pregunta ${index + 1}',
            style: const TextStyle(fontSize: 24),
          ),
          const Text('Presiona el icono de audio para escuchar la pregunta.'),
          const SizedBox(height: 12),
          IconButton(
            icon: const Icon(
              Icons.audiotrack,
              size: 80,
            ),
            onPressed: () {
              audioPlayer.setAsset(question.pathAudio);
              audioPlayer.play();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 12,
            ),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Escribe la respuesta en quechua',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final answer = controller.text.trim().toLowerCase();
              final correctAnswer = question.quechua.toLowerCase();
              controller.clear();

              if (answer == correctAnswer) {
                _showDialogCorrectAnswer();
              } else {
                _showDialogErrorAnswer();
              }
            },
            child: const Text('Siguiente'),
          ),
        ],
      ),
    );
  }

  void _showDialogCorrectAnswer() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('¡Correcto!'),
          content: const Text('¡Sigue así!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _next();
              },
              child: const Text('Entendido'),
            ),
          ],
        );
      },
    );
  }

  void _showDialogErrorAnswer() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('¡Incorrecto!'),
          content: const Text('¡Sigue intentando!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _next();
              },
              child: const Text('Entendido'),
            ),
          ],
        );
      },
    );
  }

  void _next() {
    if (index < 9) {
      index++;
      setState(() {});
    } else {
      Navigator.pop(context);
    }
  }
}
