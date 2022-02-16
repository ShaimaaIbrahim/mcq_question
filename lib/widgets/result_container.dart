
import 'package:exam_app/models/questions.dart';
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
  final String result;
  final int index;
  final bool check;
  final Color color;
  final MainViewModel vm;

  ResultContainerWidget({
    Key? key,
    required this.result, required this.index, required this.check, required this.color, required this.vm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen<MainViewModel>(
      builder: (_, vmodel, child){
        bool ch= false;
        Color color = whiteColor;
        if(index==0){
          ch= vmodel.check1;
        }else if(index==1){
          ch= vmodel.check2;
        }else if(index==2){
          ch= vmodel.check2;
        }else{
          ch= vmodel.check3;
        }
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(bottom: 10.h),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              border: Border.all(color: primaryColor, width: 1.w)),
          child: Padding(
              padding: EdgeInsets.all(15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RoundedCheckBox(vm: vm, index: index, check: ch, color: color,),
                  widthSpace(20.w),
                  bold18Text(result, color: primaryColor),
                ],
              )),
        ).onTap(() {
          vmodel.changeState(index);
        });
      },
    );


  }
}
