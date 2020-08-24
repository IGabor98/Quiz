
import 'package:flutter_quiz/DTO/OptionDTO.dart';
import 'package:flutter_quiz/DTO/QuestionDTO.dart';
import 'package:flutter_quiz/entities/Option.dart';
import 'package:flutter_quiz/entities/Question.dart';


class QuestionService {

  List<Question> getQuestions() {
    List<Question> questions = List<Question>();

    for (int i = 0; i < 10; i++) {
      var optionsDTO = List<OptionDTO>();

      for (int i = 0; i < 4; i++) {
        optionsDTO.add(OptionDTO("answer $i", i == 2 ? true : false));
      }

      var questionDTO = QuestionDTO("text", optionsDTO, '1');

      var question = this.create(questionDTO);

      questions.add(question);
    }

    return questions;
  }

  Question create(QuestionDTO questionDTO) {
    //Create Options
    List<Option> options = this.createOptions(questionDTO.options);



    //create Question
    return Question(questionDTO.text, options, questionDTO.pacID, imageURL: questionDTO.imageURL);

  }

  List<Option> createOptions(List<OptionDTO> optionsDTO) {
    var options = List<Option>();

    optionsDTO.forEach((element) {
      var option = Option(element.text, element.isTrue);
      options.add(option);
    });

    return options;
  }
}

//TODO TEST
main() {
  var service = QuestionService();

  var questions = service.getQuestions();

  print(questions.length);
  print(questions[0].text);
  print(questions[0].options[2].isTrue);

}
