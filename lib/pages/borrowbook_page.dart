import 'package:eresource/pages/search_book.dart';
import 'package:flutter/material.dart';

class BorrowBook extends StatefulWidget {
  const BorrowBook({super.key});

  @override
  State<BorrowBook> createState() => _BorrowBookState();
}

class _BorrowBookState extends State<BorrowBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const SearchBook()));
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
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 20),
                child: Text(
                  "I LOST A PLANET AND GAINED A HOME",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/book_cover1.png",
                      width: 110,
                      height: 202,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Katie Johnson",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color.fromRGBO(21, 80, 60, 1.0),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              "Tipe Buku : Hard Book",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Kategori : Novel",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ISBN : 12345678910",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rak : Novel & Cerpen",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 60,
                        child: Container(
                          color: Color.fromRGBO(242, 242, 242, 1.0),
                          child: Stack(
                            children: [
                              Text(
                            "Tersedia",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400),
                          ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 60,
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 60,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Container(
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Pinjam Buku"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 97, 75, 195)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
