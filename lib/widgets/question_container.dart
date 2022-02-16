import 'package:exam_app/utils/colors.dart';
import 'package:exam_app/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionContainerWidget extends StatelessWidget {
  final String text;
   QuestionContainerWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        border: Border.all(color: whiteColor, width: 1.w)
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, bottom: 30.h, left: 10.w, right: 10.w),
        child: bold18Text(text, color: whiteColor),
      ),
    );
  }
}
