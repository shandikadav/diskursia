import 'package:eresource/pages/borrowmenu_page.dart';
import 'package:eresource/pages/homepage.dart';
import 'package:eresource/pages/qr_page.dart';
import 'package:eresource/pages/search_book.dart';
import 'package:flutter/material.dart';

int currentIndex = 0;

List pages = [HomePage(), SearchBook(), QRPage(), BorrowPage()];

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Color(0xFF614BC3),
        unselectedItemColor: Colors.grey.withOpacity(1),
        selectedLabelStyle: TextStyle(fontSize: 12),
        showUnselectedLabels: true,
        elevation: 10,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Cari", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "QR-Code", icon: Icon(Icons.qr_code_scanner_rounded)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
