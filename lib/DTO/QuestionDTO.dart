import 'package:flutter_quiz/DTO/OptionDTO.dart';

class QuestionDTO {
  String text;
  List<OptionDTO> options;
  String pacID;
  String imageURL;

  QuestionDTO(this.text, this.options, this.pacID, {this.imageURL});
}