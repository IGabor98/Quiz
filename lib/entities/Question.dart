import 'package:flutter_quiz/DTO/OptionDTO.dart';
import 'package:flutter_quiz/DTO/QuestionDTO.dart';
import 'package:flutter_quiz/entities/Entity.dart';
import 'package:flutter_quiz/entities/Option.dart';

class Question extends Entity {
  String text;
  String imageURL;

  String pacID;
  List<Option> options = List();

  Question(this.text, this.options, this.pacID, {this.imageURL});
}
