import 'package:flutter/material.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Text(
              'QR Code',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
                'Kode QR dipakai untuk masuk ke dalam perpustakaan dan juga sebagai presensi. Silakan melakukan scan di meja perpustakaan'),
            SizedBox(
              height: 9,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Klik disini untuk melihat tutorial',
                style: TextStyle(color: Color(0xFF1D33FF)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.zero,
                color: Color(0xFF614BC3),
                height: 304,
                width: 304,
                child: Image.asset(
                  'assets/qr-code.png',
                  height: MediaQuery.of(context).size.width - 56 - 20,
                  // width: MediaQuery.of(context).size.width - 56 - 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
