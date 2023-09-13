import 'package:flutter/material.dart';

class BorrowPage extends StatelessWidget {
  const BorrowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20,
              )),
          title: Text(
            "Pinjam Buku",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          children: [],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(97, 75, 195, 1.0),
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
