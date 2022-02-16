
import '../models/questions.dart';

List<Question> getAllQuestions(){

  List<Question> questions = [];

  questions.add(Question(question: "what capital of france?", results: ["cairo", "hend" , "paris", "knda"], correct: "paris"));
  questions.add(Question(question: "what capital of eqypt?", results: ["cairo", "hend" , "paris", "knda"]));
  questions.add(Question(question: "what capital of American?", results: ["cairo", "hend" , "paris", "knda"]));
  questions.add(Question(question: "what capital of sudan?", results: ["cairo", "hend" , "paris", "knda"]));
  questions.add(Question(question: "what capital of france?", results: ["cairo", "hend" , "paris", "knda"]));

  return questions;
}