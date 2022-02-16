
import 'package:exam_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';
import '../utils/texts.dart';

class StyledButton extends StatelessWidget {
  final text;
  final Color? fillColor;
  final Function function;
  final Widget child;
  final bool? radius;
  const StyledButton({Key? key, this.text, required this.function, this.fillColor, this.radius, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: radius==null ? BorderRadius.all(Radius.circular(4.r)):  BorderRadius.all(Radius.circular(0.r)),
        color: fillColor?? primaryColor,),
      child: Center(
          child: child
      ),
    ).onTap(function);
  }
}
