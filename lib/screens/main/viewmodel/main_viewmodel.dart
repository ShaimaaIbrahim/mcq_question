import 'package:exam_app/models/questions.dart';
import 'package:exam_app/screens/BaseViewModel.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:exam_app/utils/common_functions.dart';
import 'package:exam_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainViewModel extends BaseViewModel {
  int currentPage = 0;
  Question? question;
  List<bool> check = [false, false, false, false];
  List<Color> colors = [whiteColor, whiteColor, whiteColor, whiteColor];
  int? resultIndex;
  int? correctIndex;
  bool next = false;
  int result = 0;

  void setPage(int num) {
    currentPage = num;
    notifyListeners();
  }

  changeState(int index, int pageIndex) {
    this.resultIndex = index;
    notifyListeners();
    for (int i = 0; i < check.length; i++) {
      check[i] = false;
    }
    check[index] = true;

    for (int i = 0; i < colors.length; i++) {
      colors[i] = whiteColor;
    }
    colors[index] = Colors.orange;
    notifyListeners();
  }

// void checkResult(Question ques, int index) {
//   if (question == null) return;
//
//   if (question!.results![index] == ques.correct) {
//     correctIndex = index;
//     next=true;
//     notifyListeners();
//     for (int i = 0; i < check.length; i++) {
//       check[i] = false;
//     }
//     check[index] = true;
//     notifyListeners();
//
//     for (int i = 0; i < colors.length; i++) {
//       colors[i] = whiteColor;
//     }
//     colors[index] = Colors.green;
//     notifyListeners();
//   } else {
//     for (int i = 0; i < check.length; i++) {
//       check[i] = false;
//     }
//     check[index] = true;
//     notifyListeners();
//
//     for (int i = 0; i < colors.length; i++) {
//       colors[i] = whiteColor;
//     }
//     colors[index] = Colors.red;
//     if (correctIndex != null) {
//       colors[correctIndex!] = Colors.green;
//     }
//     notifyListeners();
//   }
// }
}
