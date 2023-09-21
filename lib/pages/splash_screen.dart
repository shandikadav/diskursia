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
        (() => Navigator.pushNamed(context, '/login')));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: SizedBox()),
          Center(
            child: Container(
              width: 310,
              height: 120,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/logo_eresource_splash.png',
              ))),
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("©Copyright Callousness Team",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
    );
  }
}
