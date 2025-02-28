
import 'package:get/get.dart';
import 'package:toyland_mobile/presentation/views/forgotpass/forgotpass_binding.dart';
import 'package:toyland_mobile/presentation/views/forgotpass/forgotpass_screen.dart';
import 'package:toyland_mobile/presentation/views/home/home_screen.dart';
import 'package:toyland_mobile/presentation/views/login/login_bindings.dart';
import 'package:toyland_mobile/presentation/views/signup/signup_bindings.dart';
import 'package:toyland_mobile/routes/router_name.dart';
import 'package:toyland_mobile/presentation/views/login/login_screen.dart';
import 'package:toyland_mobile/presentation/views/signup/signup_screen.dart';
import 'package:toyland_mobile/presentation/views/splash/splash_screen.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: RouterName.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RouterName.login,
      page: () => LoginScreen(),
      binding: LoginBindings()
    ),
    GetPage(
      name: RouterName.signup,
      page: () => SignupScreen(),
      binding: SignupBindings()
    ),
    GetPage(
      name: RouterName.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouterName.forgotpass,
      page: () => ForgotpassScreen(),
      binding: ForgotpassBinding()
    ),
  ];
}
