import 'package:flutter/material.dart';
import 'package:sandi/screen/infodetail_page.dart';

class FirstPage extends StatefulWidget {
  final String child;

  const FirstPage({Key? key, required this.child}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.child), // Mengatur judul AppBar menggunakan parameter 'child'
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Align(
              alignment: Alignment.center,
              child: Text("Tugu Pahlawan Surabaya"), // Menampilkan teks "Tugu Pahlawan Surabaya" di tengah
            ),
            Image.network(
              'https://1.bp.blogspot.com/-hIl-FEDTRV4/ThVuhu5LqVI/AAAAAAAAAAU/6z6W54sVU4U/s1600/DSC_0465.jpg',
              width: 280.0, // Menampilkan gambar dari URL yang diberikan dengan lebar 280.0
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoPage(child: "Tentang Kami"), // Melakukan navigasi ke halaman InfoPage dengan judul "Tentang Kami"
                  ),
                );
              },
              child: const Text("Klik untuk Detail"), // Menampilkan tombol dengan teks "Klik untuk Detail"
            ),
          ],
        ),
      ),
    );
  }
}
