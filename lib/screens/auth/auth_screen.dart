import 'package:exam_app/routes/RoutesNames.dart';
import 'package:exam_app/screens/BaseScreen.dart';
import 'package:exam_app/screens/auth/viewmodel/auth_viewmodel.dart';
import 'package:exam_app/services/navigation_services.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:exam_app/utils/common_functions.dart';
import 'package:exam_app/utils/texts.dart';
import 'package:exam_app/widgets/styled_button.dart';
import 'package:exam_app/widgets/styled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../locator.dart';

TextEditingController _nameController = TextEditingController();

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen<AuthViewModel>(
      builder: (_, vm, child){
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        heightSpace(100.h),
                        Center(
                            child: Image.asset('assets/icons/exam.png', width: 100.w, height: 100.h,)),
                        heightSpace(50.h),
                        bold16Text('Name'),
                        heightSpace(5.h),
                        StyledTextField(obsecure: false, controller: _nameController, hint: 'Enter Name',),
                        heightSpace(30.h),
                        StyledButton(text : 'submit', function: (){
                          if(_nameController.text.isNotEmpty){
                            locator<NavigationService>().navigateTo(RouteName.MAIN);
                          }else{
                            showSnackBar('Name is Empty', context);
                          }

                        }, child: bold18Text('submit', color: whiteColor),)
                      ],
                    ),
                  )
              ),
            ),
          ),
        );
      },
    );

  }
}
