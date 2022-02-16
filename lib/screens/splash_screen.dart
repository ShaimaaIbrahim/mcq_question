import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../locator.dart';
import '../routes/RoutesNames.dart';
import '../services/navigation_services.dart';
import '../utils/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    new Future.delayed(const Duration(seconds: 10),
            () => locator<NavigationService>().navigateTo(RouteName.AUTH));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 811),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);

    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                      top: 0.h,
                      bottom: 0.h,
                      right: 0.w,
                      left: 0.w,
                      child: Image.asset('assets/icons/exam.png', width: 100.w, height: 100.h,))
                ],
              ),
            )
        ),
      ),
    );
  }
}
