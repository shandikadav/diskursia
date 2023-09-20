import 'package:flutter/material.dart';

class MenuHomepage {
  Widget image;
  Color color;
  String title;
  String navigator;

  MenuHomepage(
      {required this.image,
      required this.title,
      required this.color,
      required this.navigator});
}

class MenuBuku {
  Widget image;
  String title;
  String penulis;
  String tipe;
  int tersedia;
  String kategori;
  String navigator;

  MenuBuku(
      {required this.image,
      required this.title,
      required this.penulis,
      required this.tipe,
      required this.tersedia,
      required this.kategori,
      required this.navigator});
}
