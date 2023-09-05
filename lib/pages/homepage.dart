import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/homepage_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuHomepage> _menuList = [];
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = [
    Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
      ),
    ),
    Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
      ),
    )
  ];
  @override
  
  void initState() {
    super.initState();

    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/menu_pinjam.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 10, 40, 43),
      title: "Pinjam Buku",
      navigator: "/pinjampage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/menu_peminjamanaktif.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 32, 32, 49),
      title: "Pinjaman Aktif",
      navigator: "/pinjamaktifpage",
    ));
     _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/menu_riwayat.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 34, 23, 80),
      title: "Riwayat Pinjam",
      navigator: "/riwayatpage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/menu_ruangan.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 21, 80, 60),
      title: "Pinjam Ruangan",
      navigator: "/ruanganpage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/menu_ebook.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 32, 32, 49),
      title: "eBook",
      navigator: "/ebookpage",
    ));
    _menuList.add(MenuHomepage(
      image: Image.asset(
        'assets/menu_bantuan.png',
        fit: BoxFit.fill,
      ),
      color: const Color.fromARGB(255, 10, 40, 43),
      title: "Bantuan",
      navigator: "/bantuanpage",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('assets/profile.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HALO,',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Shandika David',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: IconButton(
                      padding: const EdgeInsets.only(right: 21),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      viewportFraction: 0.9,
                      enlargeCenterPage: true,
                      aspectRatio: 15 / 5,
                      enableInfiniteScroll: true,
                    ),
                  ),
            ),
            const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            _buildMenuHomepage(),
          ],
        ),
      ),
    );
  }
  Widget _buildMenuHomepage() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Expanded(
        child: SizedBox(
            width: double.infinity,
            height: 300,
            child: Container(
                // color: Colors.amber,
                margin: const EdgeInsets.only(top: 0, bottom: 0),
                child: GridView.builder(
                    padding: EdgeInsets.only(),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, position) {
                      return _rowMenuHomepage(_menuList[position]);
                    }))),
      ),
    );
  }

  Widget _rowMenuHomepage(MenuHomepage) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(MenuHomepage.navigator);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: MenuHomepage.color,
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: MenuHomepage.image,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 6)),
          Text(
            MenuHomepage.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11, ),
          )
        ],
      ),
    );
  }
}

