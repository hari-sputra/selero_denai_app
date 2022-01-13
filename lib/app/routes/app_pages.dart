import 'package:get/get.dart';

import 'package:selero_denai_app/app/modules/home/bindings/home_binding.dart';
import 'package:selero_denai_app/app/modules/home/views/home_view.dart';
import 'package:selero_denai_app/app/modules/islogin/bindings/islogin_binding.dart';
import 'package:selero_denai_app/app/modules/islogin/views/islogin_view.dart';
import 'package:selero_denai_app/app/modules/menu/bindings/menu_binding.dart';
import 'package:selero_denai_app/app/modules/menu/views/menu_view.dart';
import 'package:selero_denai_app/app/modules/profile/bindings/profile_binding.dart';
import 'package:selero_denai_app/app/modules/profile/views/profile_view.dart';
import 'package:selero_denai_app/app/modules/signin/bindings/signin_binding.dart';
import 'package:selero_denai_app/app/modules/signin/views/signin_view.dart';
import 'package:selero_denai_app/app/modules/signup/bindings/signup_binding.dart';
import 'package:selero_denai_app/app/modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.ISLOGIN,
      page: () => IsloginView(),
      binding: IsloginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
  ];
}
