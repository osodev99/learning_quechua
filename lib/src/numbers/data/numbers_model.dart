import 'package:x_equis/src/shared/models/base_model.dart';

class NumbersModel extends BaseModel {
  final int number;

  NumbersModel({
    required super.spanish,
    required super.quechua,
    required this.number,
    required super.pathAudio,
  });

  static final List<NumbersModel> numbersList = [
    NumbersModel(
      spanish: "Uno",
      quechua: "Huk",
      number: 1,
      pathAudio: 'assets/audio/numbers/1.mp3',
    ),
    NumbersModel(
      spanish: "Dos",
      quechua: "Iskay",
      pathAudio: 'assets/audio/numbers/2.mp3',
      number: 2,
    ),
    NumbersModel(
      spanish: "Tres",
      quechua: "Kimsa",
      pathAudio: 'assets/audio/numbers/3.mp3',
      number: 3,
    ),
    NumbersModel(
      spanish: "Cuatro",
      quechua: "Tawa",
      pathAudio: 'assets/audio/numbers/4.mp3',
      number: 4,
    ),
    NumbersModel(
      spanish: "Cinco",
      quechua: "Pichqa",
      pathAudio: 'assets/audio/numbers/5.mp3',
      number: 5,
    ),
    NumbersModel(
      spanish: "Seis",
      quechua: "Soqta",
      pathAudio: 'assets/audio/numbers/6.mp3',
      number: 6,
    ),
    NumbersModel(
      spanish: "Siete",
      quechua: "Qanchis",
      pathAudio: 'assets/audio/numbers/7.mp3',
      number: 7,
    ),
    NumbersModel(
      spanish: "Ocho",
      quechua: "Pusaq",
      pathAudio: 'assets/audio/numbers/8.mp3',
      number: 8,
    ),
    NumbersModel(
      spanish: "Nueve",
      quechua: "Isqun",
      pathAudio: 'assets/audio/numbers/9.mp3',
      number: 9,
    ),
    NumbersModel(
      spanish: "Diez",
      quechua: "Chunka",
      pathAudio: 'assets/audio/numbers/10.mp3',
      number: 10,
    ),
    NumbersModel(
      spanish: "Veinte",
      quechua: "Iskay Chunka",
      pathAudio: 'assets/audio/numbers/20.mp3',
      number: 20,
    ),
    NumbersModel(
      spanish: "Treinta",
      quechua: "Kimsa Chunka",
      pathAudio: 'assets/audio/numbers/30.mp3',
      number: 30,
    ),
    NumbersModel(
      spanish: "Cuarenta",
      quechua: "Tawa Chunka",
      pathAudio: 'assets/audio/numbers/40.mp3',
      number: 40,
    ),
    NumbersModel(
      spanish: "Cincuenta",
      quechua: "Pichqa Chunka",
      pathAudio: 'assets/audio/numbers/50.mp3',
      number: 50,
    ),
    NumbersModel(
      spanish: "Sesenta",
      quechua: "Soqta Chunka",
      pathAudio: 'assets/audio/numbers/60.mp3',
      number: 60,
    ),
    NumbersModel(
      spanish: "Setenta",
      quechua: "Qanchis Chunka",
      pathAudio: 'assets/audio/numbers/70.mp3',
      number: 70,
    ),
    NumbersModel(
      spanish: "Ochenta",
      quechua: "Pusaq Chunka",
      pathAudio: 'assets/audio/numbers/80.mp3',
      number: 80,
    ),
    NumbersModel(
      spanish: "Noventa",
      quechua: "Isqun Chunka",
      pathAudio: 'assets/audio/numbers/90.mp3',
      number: 90,
    ),
    NumbersModel(
      spanish: "Cien",
      quechua: "Pachak",
      pathAudio: 'assets/audio/numbers/100.mp3',
      number: 100,
    ),
  ];
}
