import 'dart:math';

import 'package:exam_app/screens/BaseScreen.dart';
import 'package:exam_app/screens/main/question_page.dart';
import 'package:exam_app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:exam_app/utils/constants.dart';
import 'package:exam_app/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/questions.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    PageController controller = PageController(
    );

    //this expression to correct list of questions in random order----
    getAllQuestions().shuffle();

return BaseScreen<MainViewModel>(
  builder: (_, vm , child){
    return Scaffold(
      appBar: AppBar(
        title: bold18Text('Exam', color: whiteColor),
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Center(
                child: bold18Text(
                  '${vm.currentPage+1}/5', color: whiteColor
                )),
          ),
        ],
      ),
      body: SafeArea(
        child:  PageView(
          children: [
            QuestionPage(controller: controller, question: getAllQuestions()[0], pageIndex: 0, vm: vm,),
            QuestionPage(controller: controller,  question: getAllQuestions()[1],pageIndex: 1, vm: vm,),
            QuestionPage(controller: controller,  question: getAllQuestions()[2], pageIndex: 2, vm: vm,),
            QuestionPage(controller: controller,  question: getAllQuestions()[3], pageIndex: 3, vm: vm,),
            QuestionPage(controller: controller,  question: getAllQuestions()[4], pageIndex : 4, vm: vm,)
          ],
          scrollDirection: Axis.horizontal,
          reverse: true,
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          onPageChanged: (num) {
            vm.setPage(num);
          },
        ),
      ),
    );
  },
);
  }
}
