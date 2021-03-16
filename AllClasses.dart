import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Questions {
  String questiionText;
  bool questionAns;
//constructor for Question answers
  Questions(String q, bool a) {
    questiionText = q;
    questionAns = a;
  }
}

class Quizbrain {
  int _questionNo = 0; //Abstract class

  List<Questions> _qlist = [
    Questions('Some cats are actually allergic to humans', true),
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions(
        'Approximately one quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questions('Google was originally called \"Backrub\".', true),
    Questions(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questions(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNo < _qlist.length - 1) {
      _questionNo++;
    } else {
      BuildContext context;
      Alert(context: context, title: "Flutter is awesome.").show();
      // Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
    }
  }

  String getQuestionText() {
    return _qlist[_questionNo].questiionText;
  }

  bool getQuestionAns() {
    return _qlist[_questionNo].questionAns;
  }

  //  bool isFinished() {

  //   int a=_qlist.length-1;
  //   if()
  // }
}