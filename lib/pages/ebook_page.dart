import 'package:eresource/pages/homepage.dart';
import 'package:flutter/material.dart';

class EbookPage extends StatelessWidget {
  const EbookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            )),
        title: Text(
          "Menu Ebook",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}