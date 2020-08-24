import 'package:flutter/material.dart';
import 'package:flutter_quiz/entities/Question.dart';
import 'package:flutter_quiz/services/QuestionService.dart';

class QuestionsListScreen extends StatefulWidget {
  @override
  _QuestionsListScreenState createState() => _QuestionsListScreenState();
}

class _QuestionsListScreenState extends State<QuestionsListScreen> {
  static var questionService = QuestionService();

  List<Question> questions = questionService.getQuestions();

  Widget _buildQuestions(int index) {
    var question = questions[index];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text(question.text),
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildQuestions(index);
          }),
    );
  }
}
