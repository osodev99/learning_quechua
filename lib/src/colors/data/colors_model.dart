class ColorsModel {
  final String colorSpanish;
  final String colorQuechua;
  final String colorHex;
  final String pathAudio;

  ColorsModel({
    required this.colorSpanish,
    required this.colorQuechua,
    required this.colorHex,
    required this.pathAudio,
  });

  static final List<ColorsModel> colorsList = [
    ColorsModel(
      colorSpanish: "Amarillo",
      colorQuechua: "Q'illu",
      colorHex: "#FFFF00",
      pathAudio: 'assets/audio/colors/amarillo.mp3',
    ),
    ColorsModel(
      colorSpanish: "Anaranjado",
      colorQuechua: "Naranja",
      colorHex: "#FFA500",
      pathAudio: 'assets/audio/colors/anaranjado.mp3',
    ),
    ColorsModel(
      colorSpanish: "Azul",
      colorQuechua: "Anqas",
      colorHex: "#0000FF",
      pathAudio: 'assets/audio/colors/azul.mp3',
    ),
    ColorsModel(
      colorSpanish: "Marrón",
      colorQuechua: "Ch'umpi",
      colorHex: "#A52A2A",
      pathAudio: 'assets/audio/colors/marron.mp3',
    ),
    ColorsModel(
      colorSpanish: "Morado",
      colorQuechua: "Kulli",
      colorHex: "#800080",
      pathAudio: 'assets/audio/colors/morado.mp3',
    ),
    ColorsModel(
      colorSpanish: "Negro",
      colorQuechua: "Yana",
      colorHex: "#000000",
      pathAudio: 'assets/audio/colors/negro.mp3',
    ),
    ColorsModel(
      colorSpanish: "Rojo",
      colorQuechua: "Puka",
      colorHex: "#FF0000",
      pathAudio: 'assets/audio/colors/rojo.mp3',
    ),
    ColorsModel(
      colorSpanish: "Rosado",
      colorQuechua: "Panti",
      colorHex: "#FFC0CB",
      pathAudio: 'assets/audio/colors/rosado.mp3',
    ),
    ColorsModel(
      colorSpanish: "Verde",
      colorQuechua: "Q'omer",
      colorHex: "#008000",
      pathAudio: 'assets/audio/colors/verde.mp3',
    ),
  ];
}
