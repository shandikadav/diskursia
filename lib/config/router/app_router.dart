import 'package:diskursia/features/auth/ui/pages/login_page.dart';
import 'package:diskursia/pages/main_page.dart';
import 'package:diskursia/features/splash/ui/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

part 'name_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    name: NameRouter.splash,
    builder: (context, state) => SplashPage(),
  ),
  GoRoute(
    path: "/login",
    name: NameRouter.login,
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: "/main",
    name: NameRouter.main,
    builder: (context, state) => MainPage(),
  ),
]);
