import 'package:x_equis/src/shared/models/base_model.dart';

class ColorsModel extends BaseModel {
  final String colorHex;

  ColorsModel({
    required super.spanish,
    required super.quechua,
    required this.colorHex,
    required super.pathAudio,
  });

  static final List<ColorsModel> colorsList = [
    ColorsModel(
      spanish: "Amarillo",
      quechua: "Q'illu",
      colorHex: "#FFFF00",
      pathAudio: 'assets/audio/colors/amarillo.mp3',
    ),
    ColorsModel(
      spanish: "Anaranjado",
      quechua: "Qhellmo",
      colorHex: "#FFA500",
      pathAudio: 'assets/audio/colors/anaranjado.mp3',
    ),
    ColorsModel(
      spanish: "Azul",
      quechua: "Anqas",
      colorHex: "#0000FF",
      pathAudio: 'assets/audio/colors/azul.mp3',
    ),
    ColorsModel(
      spanish: "Marrón",
      quechua: "Ch'umpi",
      colorHex: "#A52A2A",
      pathAudio: 'assets/audio/colors/marron.mp3',
    ),
    ColorsModel(
      spanish: "Morado",
      quechua: "Kulli",
      colorHex: "#800080",
      pathAudio: 'assets/audio/colors/morado.mp3',
    ),
    ColorsModel(
      spanish: "Negro",
      quechua: "Yana",
      colorHex: "#000000",
      pathAudio: 'assets/audio/colors/negro.mp3',
    ),
    ColorsModel(
      spanish: "Rojo",
      quechua: "Puka",
      colorHex: "#FF0000",
      pathAudio: 'assets/audio/colors/rojo.mp3',
    ),
    ColorsModel(
      spanish: "Rosado",
      quechua: "Panti",
      colorHex: "#FFC0CB",
      pathAudio: 'assets/audio/colors/rosado.mp3',
    ),
    ColorsModel(
      spanish: "Verde",
      quechua: "Q'omer",
      colorHex: "#008000",
      pathAudio: 'assets/audio/colors/verde.mp3',
    ),
    ColorsModel(
      spanish: "Blanco",
      quechua: "Yuraq",
      colorHex: "#FFFFFF",
      pathAudio: 'assets/audio/colors/blanco.mp3',
    ),
  ];
}
