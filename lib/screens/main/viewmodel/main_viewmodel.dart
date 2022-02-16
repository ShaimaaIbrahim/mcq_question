import 'package:exam_app/screens/BaseViewModel.dart';
import 'package:flutter/cupertino.dart';

class MainViewModel extends BaseViewModel{

  int currentPage = 0;

  void setPage(int num) {
    this.currentPage = num;
    notifyListeners();
  }


  List<bool> check = [false, false , false, false];


  changeState(int index){
    this.check[index] = !this.check[index];
    for(int i =0 ; i< check.length ; i++){

      if(i==index){
        this.check[index] = !this.check[index];
      }else{
        this.check[i]= false;
      }
       // if(i != index){
       //
       //   notifyListeners();
       // }
    }
    notifyListeners();
  }


}