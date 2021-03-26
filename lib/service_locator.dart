import 'package:get_it/get_it.dart';
import './services/login_service.dart';
import './services/user_service.dart';


GetIt locator = GetIt();

void setupLocator(){

  locator.registerSingleton(UserService());
  locator.registerFactory<LoginService>(() => LoginService());


}