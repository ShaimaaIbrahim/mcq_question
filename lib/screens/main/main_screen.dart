import 'package:exam_app/screens/BaseScreen.dart';
import 'package:exam_app/screens/main/question_page.dart';
import 'package:exam_app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:exam_app/utils/constants.dart';
import 'package:exam_app/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    PageController controller = PageController(
    );

    List<Widget> _list = <Widget>[
      QuestionPage(controller: controller, question: getAllQuestions()[0], index: 0),
      // QuestionPage(controller: controller,  question: getAllQuestions()[1],index: 1,),
      // QuestionPage(controller: controller,  question: getAllQuestions()[2], index: 2,),
      // QuestionPage(controller: controller,  question: getAllQuestions()[3], index: 3,),
      // QuestionPage(controller: controller,  question: getAllQuestions()[4], index: 4,)
    ];

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
          children: _list,
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
