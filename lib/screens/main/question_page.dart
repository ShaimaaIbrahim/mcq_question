import 'package:exam_app/screens/BaseScreen.dart';
import 'package:exam_app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:exam_app/utils/common_functions.dart';
import 'package:exam_app/utils/constants.dart';
import 'package:exam_app/widgets/cached_network_image.dart';
import 'package:exam_app/widgets/question_container.dart';
import 'package:exam_app/widgets/result_container.dart';
import 'package:exam_app/widgets/styled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/questions.dart';
import '../../utils/colors.dart';

class QuestionPage extends StatelessWidget {
  final PageController controller;
  final Question question;
  final int index;

  const QuestionPage(
      {Key? key,
      required this.controller,
      required this.question,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      builder: (_, vm, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  children: [
                    heightSpace(20.h),
                    QuestionContainerWidget(text: question.question!),
                    heightSpace(20.h),
                    CachedNetworkmage(
                      url:
                          'https://img.freepik.com/free-photo/scene-with-minimal-pink-podiums-arrangement_23-2149269992.jpg',
                      height: 150.h,
                      width: MediaQuery.of(context).size.width,
                    ),
                    heightSpace(20.h),
                  ResultContainerWidget(
                    result: question.results![index], index: 0, check: vm.check1, color: vm.color1, vm: vm,),
                    ResultContainerWidget(
                      result: question.results![index], index: 1, check: vm.check2, color: vm.color2, vm: vm,),
                    ResultContainerWidget(
                      result: question.results![index], index: 2, check: vm.check3, color: vm.color3, vm: vm,),
                    heightSpace(20.h),
                    StyledButton(
                      function: () {
                       // vm.checkResult(question, index);
                        //controller.jumpToPage(index+1);
                      },
                      text: 'submit',
                      child: Icon(
                        Icons.check,
                        color: whiteColor,
                        size: 30.w,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
