import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kind_words/app/config/app_routes.dart';
import 'package:kind_words/features/auth/presentation/pages/login_page.dart';
import 'package:kind_words/features/auth/presentation/pages/signup_page.dart';
import 'package:kind_words/features/auth/presentation/pages/splash_page.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashPage()),
    GetPage(name: AppRoutes.login, page: () => const LoginPage()),
    GetPage(name: AppRoutes.signUp, page: () => const SignupPage()),
  ];
}
