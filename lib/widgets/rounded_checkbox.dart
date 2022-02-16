import 'package:exam_app/screens/BaseScreen.dart';
import 'package:exam_app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:exam_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/BaseViewModel.dart';
import '../utils/colors.dart';

class RoundedCheckBox extends StatelessWidget {
  MainViewModel vm;
  final int index;
  final Color color;
  final bool check;

  RoundedCheckBox({Key? key, required this.vm, required this.index, required this.color, required this.check}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 31.w,
        height: 31.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(color: greyColor, width: 1.w)),
        child: Center(
            child: check
                ? Icon(
              Icons.lens,
              color: primaryColor,
            )
                : Container()));

  }
}
