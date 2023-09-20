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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 10, bottom: 20),
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
                      left: 0,
                      right: 0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/book_cover1.png",
                          width: 141,
                          height: 225,
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
                    padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: 50,
                            child: Container(
                              color: Color.fromRGBO(242, 242, 242, 1.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Tersedia",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "2",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 1.0),
                                border: Border.symmetric(
                                  vertical: BorderSide(color: Colors.grey),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Tahun Terbit",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "2023",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: 50,
                            child: Container(
                              color: Color.fromRGBO(242, 242, 242, 1.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Jumlah Halaman",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "169",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Sinopsis',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est. Aliquam nec accumsan sem. Donec pharetra, nunc a dictum auctor, erat enim cursus ex, a bibendum velit diam vel nunc. Quisque suscipit auctor eros, sed congue orci vestibulum et. Ut semper dapibus elit, a posuere augue congue in. Duis laoreet sed tellus non mattis.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromARGB(50, 158, 158, 158)))),
            width: double.infinity,
            height: 80,
            child: Container(
              // color: Colors.red,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Pinjam Buku"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 97, 75, 195)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
