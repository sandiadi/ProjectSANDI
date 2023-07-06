import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  final String child;

  const InfoPage({Key? key, required this.child}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  // Mendefinisikan teks deskripsi awal
  String descText = "Tugu Pahlawan Surabaya terletak di Jalan Pahlawan, tepatnya di pusat Kota Surabaya, Jawa Timur, Indonesia. Jalan Pahlawan adalah jalan utama yang menghubungkan beberapa area penting di kota ini. Lokasi Tugu Pahlawan berada di sebelah barat Alun-Alun Kota Surabaya.";

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Widget Text untuk menampilkan deskripsi
            Text(
              descText,
              // Menampilkan 2 baris teks deskripsi saat tidak di-expand
              maxLines: descTextShowFlag ? 8 : 2,
              textAlign: TextAlign.start,
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
