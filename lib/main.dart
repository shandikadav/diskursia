import 'package:eresource/pages/borrowmenu_page.dart';
import 'package:eresource/pages/homepage.dart';
import 'package:eresource/pages/login_page.dart';
import 'package:eresource/pages/main_page.dart';
import 'package:eresource/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPages(),
        '/login': (context) => const LoginPage(),
        '/mainpage': (context) => const MainPage(),
        '/homepage': (context) => const HomePage(),
        '/borrowpage': (context) => const BorrowPage(),
      },
    );
  }
}
