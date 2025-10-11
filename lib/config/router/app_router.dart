import 'package:diskursia/pages/login_page.dart';
import 'package:diskursia/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';

part 'name_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    name: NameRouter.splash,
    builder: (context, state) => SplashPages(),
  ),
  GoRoute(
    path: "/login",
    name: NameRouter.login,
    builder: (context, state) => LoginPage(),
  ),
]);
