import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  final String child;

  const LocationPage({Key? key, required this.child}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  // Mendefinisikan teks deskripsi lokasi
  String descText = "Tugu Pahlawan Surabaya terletak di Jalan Pahlawan, tepatnya di pusat Kota Surabaya, Jawa Timur, Indonesia. Jalan Pahlawan adalah jalan utama yang menghubungkan beberapa area penting di kota ini. Lokasi Tugu Pahlawan berada di sebelah barat Alun-Alun Kota Surabaya."
      "\n\nBerikut adalah alamat lengkap Tugu Pahlawan Surabaya:"
      "\n\nTugu Pahlawan Surabaya"
      "\nJl. Pahlawan, Bubutan, Surabaya, Jawa Timur"
      "\nKode Pos: 60174"
      "\n\nTugu Pahlawan Surabaya memiliki lokasi yang mudah dijangkau dan merupakan salah satu landmark terkenal di kota ini. Jika Anda berada di Kota Surabaya, Anda dapat dengan mudah menemukan Tugu Pahlawan dengan mengikuti petunjuk arah atau menggunakan aplikasi peta yang tersedia.";

  // Menyimpan status tampilan teks deskripsi
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.child),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              // Menampilkan gambar lokasi dengan asset 'assets/loc.png'
              child: Image.asset(
                'assets/loc.png',
                width: 800.0,
              ),
              onTap: () {
                // Aksi yang akan dilakukan ketika gambar ditekan
                // Tambahkan logika atau navigasi sesuai kebutuhan aplikasi
              },
            ),
            Expanded(
              child: Text(
              descText,
              // Menampilkan 2 baris teks deskripsi saat di expand
              maxLines: descTextShowFlag ? 25 : 2,
              textAlign: TextAlign.start,
            ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  // Memperbarui status tampilan teks deskripsi
                  descTextShowFlag = !descTextShowFlag;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Menampilkan teks "Show More" atau "Show Less" berdasarkan status tampilan
                  descTextShowFlag
                      ? const Text(
                          "Show Less",
                          style: TextStyle(color: Colors.blue),
                        )
                      : const Text(
                          "Show More",
                          style: TextStyle(color: Colors.blue),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
