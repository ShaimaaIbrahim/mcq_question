import 'package:exam_app/screens/BaseViewModel.dart';
import 'package:exam_app/utils/common_functions.dart';
import 'package:exam_app/utils/extensions.dart';
import 'package:exam_app/widgets/rounded_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/BaseScreen.dart';
import '../screens/main/viewmodel/main_viewmodel.dart';
import '../utils/colors.dart';
import '../utils/texts.dart';

class ResultContainerWidget extends StatelessWidget {
  final String text;
  final MainViewModel vm;
  final int index;

  ResultContainerWidget({
    Key? key,
    required this.text, required this.vm, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(builder: (_, vm, child) {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
            color: vm.check[index] ? Colors.orangeAccent : whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(10.w)),
            border: Border.all(color: primaryColor, width: 1.w)),
        child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RoundedCheckBox(vm: vm, index: index,),
                widthSpace(20.w),
                bold18Text(text, color: primaryColor),
              ],
            )),
      ).onTap(() {
        vm.changeState(index);
      });
    });
  }
}
