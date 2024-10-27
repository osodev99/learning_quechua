class NumbersModel {
  final String numberSpanish;
  final String numberQuechua;
  final int number;
  final String pathAudio;

  NumbersModel({
    required this.numberSpanish,
    required this.numberQuechua,
    required this.number,
    required this.pathAudio,
  });

  static final List<NumbersModel> numbersList = [
    NumbersModel(
      numberSpanish: "Uno",
      numberQuechua: "Huk",
      number: 1,
      pathAudio: 'assets/audio/numbers/1.mp3',
    ),
    NumbersModel(
      numberSpanish: "Dos",
      numberQuechua: "Iskay",
      pathAudio: 'assets/audio/numbers/2.mp3',
      number: 2,
    ),
    NumbersModel(
      numberSpanish: "Tres",
      numberQuechua: "Kimsa",
      pathAudio: 'assets/audio/numbers/3.mp3',
      number: 3,
    ),
    NumbersModel(
      numberSpanish: "Cuatro",
      numberQuechua: "Tawa",
      pathAudio: 'assets/audio/numbers/4.mp3',
      number: 4,
    ),
    NumbersModel(
      numberSpanish: "Cinco",
      numberQuechua: "Pichqa",
      pathAudio: 'assets/audio/numbers/5.mp3',
      number: 5,
    ),
    NumbersModel(
      numberSpanish: "Seis",
      numberQuechua: "Soqta",
      pathAudio: 'assets/audio/numbers/6.mp3',
      number: 6,
    ),
    NumbersModel(
      numberSpanish: "Siete",
      numberQuechua: "Qanchis",
      pathAudio: 'assets/audio/numbers/7.mp3',
      number: 7,
    ),
    NumbersModel(
      numberSpanish: "Ocho",
      numberQuechua: "Pusaq",
      pathAudio: 'assets/audio/numbers/8.mp3',
      number: 8,
    ),
    NumbersModel(
      numberSpanish: "Nueve",
      numberQuechua: "Isqun",
      pathAudio: 'assets/audio/numbers/9.mp3',
      number: 9,
    ),
    NumbersModel(
      numberSpanish: "Diez",
      numberQuechua: "Chunka",
      pathAudio: 'assets/audio/numbers/10.mp3',
      number: 10,
    ),
  ];
}
