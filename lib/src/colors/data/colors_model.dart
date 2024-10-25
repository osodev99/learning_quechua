class ColorsModel {
  final String colorSpanish;
  final String colorQuechua;
  final String colorHex;

  ColorsModel({
    required this.colorSpanish,
    required this.colorQuechua,
    required this.colorHex,
  });

  static final List<ColorsModel> colorsList = [
    ColorsModel(
      colorSpanish: "Rojo",
      colorQuechua: "Puka",
      colorHex: "#FF0000",
    ),
    ColorsModel(
      colorSpanish: "Verde",
      colorQuechua: "Q'omer",
      colorHex: "#008000",
    ),
    ColorsModel(
      colorSpanish: "Azul",
      colorQuechua: "Anqas",
      colorHex: "#0000FF",
    ),
    ColorsModel(
      colorSpanish: "Amarillo",
      colorQuechua: "Q'illu",
      colorHex: "#FFFF00",
    ),
    ColorsModel(
      colorSpanish: "Blanco",
      colorQuechua: "Yuraq",
      colorHex: "#FFFFFF",
    ),
    ColorsModel(
      colorSpanish: "Negro",
      colorQuechua: "Yana",
      colorHex: "#000000",
    ),
    ColorsModel(
      colorSpanish: "Gris",
      colorQuechua: "Uqi",
      colorHex: "#808080",
    ),
    ColorsModel(
      colorSpanish: "Rosado",
      colorQuechua: "Puka Panti",
      colorHex: "#FFC0CB",
    ),
    ColorsModel(
      colorSpanish: "Naranja",
      colorQuechua: "Q'umir Puka",
      colorHex: "#FFA500",
    ),
    ColorsModel(
      colorSpanish: "Violeta",
      colorQuechua: "Kulli",
      colorHex: "#800080",
    ),
    ColorsModel(
      colorSpanish: "Marrón",
      colorQuechua: "Ch'umpi",
      colorHex: "#A52A2A",
    ),
    ColorsModel(
      colorSpanish: "Celeste",
      colorQuechua: "Kinsa Anqas",
      colorHex: "#00FFFF",
    ),
  ];
}
