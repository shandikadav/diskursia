import 'package:eresource/pages/homepage.dart';
import 'package:flutter/material.dart';

class ActiveBorrow extends StatelessWidget {
  const ActiveBorrow({super.key});

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
          "Pinjaman Aktif",
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Text(
          "Tidak ada pinjaman aktif sekarang.",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300),
        ),
        ),
    );
  }
}