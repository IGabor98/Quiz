import 'package:flutter_quiz/entities/Entity.dart';

class Option extends Entity {
  String text;
  bool isTrue;

  Option(this.text, this.isTrue);
}