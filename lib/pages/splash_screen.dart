import 'dart:async';
import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 2),
        (() => Navigator.pushNamed(context, '/mainpage')));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 190,
          height: 48,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/logo_eresource.png',
          ))),
        ),
      ),
    );
  }
}
