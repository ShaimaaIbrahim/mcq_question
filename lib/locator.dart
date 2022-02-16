import 'package:exam_app/screens/auth/viewmodel/auth_viewmodel.dart';
import 'package:exam_app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:exam_app/services/navigation_services.dart';
import 'package:get_it/get_it.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerFactory(() => AuthViewModel());
  locator.registerFactory(() => MainViewModel());
}