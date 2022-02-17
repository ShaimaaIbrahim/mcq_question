import 'package:exam_app/routes/RoutesNames.dart';
import 'package:exam_app/screens/BaseScreen.dart';
import 'package:exam_app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:exam_app/services/navigation_services.dart';
import 'package:exam_app/utils/common_functions.dart';
import 'package:exam_app/utils/constants.dart';
import 'package:exam_app/widgets/cached_network_image.dart';
import 'package:exam_app/widgets/question_container.dart';
import 'package:exam_app/widgets/result_container.dart';
import 'package:exam_app/widgets/styled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Locator.dart';
import '../../models/questions.dart';
import '../../utils/colors.dart';
import '../questions_completed_page.dart';

class QuestionPage extends StatelessWidget {
  final PageController controller;
  final Question question;
  final int pageIndex;
  final MainViewModel vm;

  const QuestionPage(
      {Key? key,
      required this.controller,
      required this.question,
      required this.pageIndex,
      required this.vm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      'https://img.freepik.com/free-photo/image-successful-female-writer-journalist-makes-notes-diary-holds-pencil-near-mouth_273609-18465.jpg',
                  height: 150.h,
                  width: MediaQuery.of(context).size.width,
                ),
                heightSpace(20.h),
                ListView.builder(
                    itemCount: getAllQuestions()[pageIndex].results!.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return ResultContainerWidget(
                        result: question.results![index],
                        index: index,
                        check: vm.check[index],
                        color: vm.colors[index],
                        vm: vm,
                        pageIndex: pageIndex,
                      );
                    }),
                heightSpace(20.h),
                StyledButton(
                  function: () {
                    if (pageIndex == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  CompletedQuestionsPage(result: vm.result,)),
                      );
                    } else {
                      vm.finishState();
                      controller.jumpToPage(pageIndex + 1);
                    }
                    print("shaina=====================${vm.result}");
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
  }
}
