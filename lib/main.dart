import 'package:exam_app/locator.dart';
import 'package:exam_app/routes/AppRouter.dart';
import 'package:exam_app/routes/RoutesNames.dart';
import 'package:exam_app/services/navigation_services.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerDown: (_) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hotel',
          theme: ThemeData(
              primarySwatch: Colors.red,
              textTheme: GoogleFonts.cairoTextTheme(
                Theme.of(context).textTheme,
              ),
              checkboxTheme: CheckboxThemeData(
                fillColor: MaterialStateProperty.all(additionColor),
              )),
          initialRoute: RouteName.SPLASH,
          navigatorKey: locator<NavigationService>().navigatorKey,
          onGenerateRoute: AppRouter.generateRoute,
        ));
  }


}
