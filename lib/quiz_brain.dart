import 'question.dart';
import 'main.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionsBank = [
    Question(
        question:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Question(question: 'A straight line measures 180 degrees.', answer: true),
    Question(
        question:
            'You don\'t get to 500 million friends without making a few enemies," said Barack Obama.',
        answer: false),
    Question(
        question:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    Question(
        question:
            'The Oscar-winning film A Beautiful Mind (2001) deals with schizophrenia.',
        answer: true),
    Question(
        question:
            'When Ronald Reagan challenged communist leaders to "tear down this wall," he was referring to the Great Wall of China.',
        answer: false),
    Question(
        question:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answer: true),
    Question(
        question:
            'King Tut was one of the longest-reigning kings of ancient Egypt.',
        answer: false),
    Question(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Question(
        question:
            'Death Valley is the lowest, hottest, and driest area of North America.',
        answer: true),
    Question(
        question: 'Spiders belong to the "insect" class of animals.',
        answer: false),
    Question(
        question: 'Volleyball was invented as a game for businessmen.',
        answer: true),
    Question(question: 'The tango originated in Argentina.', answer: true),
    Question(
        question:
            'Veins look blue because the oxygen-depleted blood in them is blue.',
        answer: false),
    Question(
        question: 'Google was originally called \"Backrub\".', answer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionsBank.length - 1) {
      _questionNumber += 1;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer({int questionNumber}) {
    return _questionsBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionsBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuiz() {
    _questionNumber = 0;
  }
}

//  'A straight line measures 180 degrees.',
//  'You don\'t get to 500 million friends without making a few enemies," said Barack Obama.',
//  'The Oscar-winning film A Beautiful Mind (2001) deals with schizophrenia.',
//  'When Ronald Reagan challenged communist leaders to "tear down this wall," he was referring to the Great Wall of China.',
//  'King Tut was one of the longest-reigning kings of ancient Egypt.',
//  'Death Valley is the lowest, hottest, and driest area of North America.',
//  'Spiders belong to the "insect" class of animals.',
//  'Volleyball was invented as a game for businessmen.',
//  'The tango originated in Argentina.',
//  'Veins look blue because the oxygen-depleted blood in them is blue.'
