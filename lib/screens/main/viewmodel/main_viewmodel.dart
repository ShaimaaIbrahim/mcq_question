import 'package:exam_app/models/questions.dart';
import 'package:exam_app/screens/BaseViewModel.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:exam_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainViewModel extends BaseViewModel {
  int currentPage = 0;
  Question? question;
  bool check1 = false;
  bool check2= false;
  bool check3=false;
  bool check4= false;

  Color color1 =whiteColor;
  Color color2 = whiteColor;
  Color color3 =whiteColor;
  Color color4 = whiteColor;

  void setPage(int num) {
    this.currentPage = num;
    notifyListeners();
  }


  changeState(int index) {
    if(index==0){
      check1= true;
      color1= Colors.orange;
      color2= whiteColor;
      color3= whiteColor;
      color4= whiteColor;

      check2=false;
      check3=false;
      check4=false;
    }
    else if(index==1){
      check1= false;
      check2=true;
      check3=false;
      check4=false;

      color1= whiteColor;
      color2= Colors.orange;
      color3= whiteColor;
      color4= whiteColor;
    }else if(index==2){
      check1= false;
      check2=false;
      check3=true;
      check4=false;


      color1= whiteColor;
      color2= whiteColor;
      color3= Colors.orange;
      color4= whiteColor;
    }
    else if(index==3){
      check1= false;
      check2=false;
      check3=false;
      check4=true;

      color1= whiteColor;
      color2= whiteColor;
      color3= whiteColor;
      color4= Colors.orange;
    }
    this.question = getAllQuestions()[index];
    notifyListeners();
  }

  // void checkResult(Question ques, int index) {
  //    if(question==null) return;
  //    if(question!.results![index]== ques.correct){
  //       this.isCorrect = true;
  //      // this.color = Colors.green;
  //    }else{
  //      this.isCorrect= false;
  //    //  this.color = Colors.red;
  //    }
  //    notifyListeners();
  // }
}
