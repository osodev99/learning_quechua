import 'package:x_equis/src/colors/data/colors_model.dart';
import 'package:x_equis/src/numbers/data/numbers_model.dart';
import 'package:x_equis/src/shared/models/base_model.dart';

class QuestionData {
  final question = <BaseModel>[];

  List<BaseModel> getQuestions() {
    final colors = ColorsModel.colorsList..shuffle();
    final numbers = NumbersModel.numbersList..shuffle();

    return [
      ...colors.take(5),
      ...numbers.take(5),
    ];
  }
}
