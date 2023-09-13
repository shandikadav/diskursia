import 'package:eresource/pages/borrowbook_page.dart';
import 'package:eresource/pages/borrowmenu_page.dart';
import 'package:flutter/material.dart';

class SearchBook extends StatelessWidget {
  const SearchBook({super.key});

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
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BorrowPage()));
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
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 224, 223, 223),
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 127, 126, 126)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Cari buku",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color.fromARGB(255, 135, 133, 133),
                  ),
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 4 / 8,
                              crossAxisCount: 2,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 4),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const BorrowBook()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                    color: const Color.fromARGB(60, 0, 0, 0))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: ClipRRect(
                                      child: Image.asset(
                                    "assets/book_cover1.png",
                                    width: 136,
                                    height: 216,
                                    fit: BoxFit.fill,
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 18, right: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "I LOST A PLANET AND GAINED A HOME ELEMAO PISAN KANG",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Text(
                                          "Katie Johnson",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  21, 80, 60, 1.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Text(
                                          "Tipe Buku : Hard Book",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Tersedia : 2",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "Kategori : Novel",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
