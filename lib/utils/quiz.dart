import './question.dart';

class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }

  int get score => _score; // getter
  List<Question> get questions => _questions;
  int get length => _questions.length;
  int get questionNumber => _currentQuestionIndex + 1;

  Question get nextQuestion {
    _currentQuestionIndex++;
    if(_currentQuestionIndex >= _questions.length) return null;
    return _questions[_currentQuestionIndex];
  }

  void answer(bool isCorrect){
    if(isCorrect) _score++;
  }
}