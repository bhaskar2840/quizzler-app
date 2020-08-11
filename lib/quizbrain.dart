import 'questionbank.dart';

class Quizbrain {
  int _questionno = 0;

  List<Questionlist> _questionbank = [
    Questionlist(
        q: 'You can lead a cow down stairs but not up stairs.', a: true),
    Questionlist(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: false),
    Questionlist(q: 'A slug\'s blood is green.', a: false),
    Questionlist(
        q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Questionlist(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Questionlist(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Questionlist(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Questionlist(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questionlist(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Questionlist(q: 'Google was originally called \"Backrub\".', a: true),
    Questionlist(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Questionlist(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void getQuestion() {
    if (_questionno < _questionbank.length-1) {
      _questionno++;
    }
  }

  String getQuestionText() {
    return _questionbank[_questionno].questionText;
  }

  bool getQuestionAnswer() {
    return _questionbank[_questionno].questionAnswer;
  }

  bool isFinished() {
    if (_questionno >= _questionbank.length - 1) {
      
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  
  void reset() {
    _questionno = 0;
  }
}
