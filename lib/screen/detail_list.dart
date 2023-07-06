import 'package:flutter/material.dart';

class DetailListPage extends StatefulWidget {
  final String child;

  const DetailListPage({Key? key, required this.child}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailListPageState createState() => _DetailListPageState();
}

class _DetailListPageState extends State<DetailListPage> {
  final List<String> title = [
    "Desain dan Arsitektur",
    "Makna dan Simbolisme",
    "Lingkungan sekitar",
    "Signifikansi",
  ];

  final List<String> desc = [
    "Tugu Pahlawan Surabaya memiliki tinggi sekitar 41,15 meter dan terdiri dari pilar-pilar beton yang menjulang ke atas. Di puncaknya terdapat patung Jenderal Sudirman, tokoh militer terkenal yang memimpin pasukan Indonesia dalam pertempuran tersebut.",
    "Tugu Pahlawan Surabaya menjadi simbol perjuangan dan semangat patriotisme rakyat Surabaya dalam mempertahankan kemerdekaan Indonesia. Monumen ini mengenang jasa-jasa para pahlawan yang gugur dalam Pertempuran Surabaya dan memperingati peristiwa bersejarah tersebut.",
    "Tugu Pahlawan Surabaya terletak di kawasan yang luas dan indah, dengan area taman yang dirancang dengan baik. Di sekitarnya terdapat Taman Makam Pahlawan, tempat peristirahatan terakhir para pahlawan yang gugur. Area sekitar tugu dan taman sering dikunjungi oleh warga Surabaya dan wisatawan untuk menghormati dan mengenang jasa-jasa para pahlawan.",
    "Tugu Pahlawan Surabaya adalah ikon penting bagi Kota Surabaya dan menjadi pusat upacara serta acara peringatan nasional setiap tahun pada tanggal 10 November. Monumen ini merupakan tempat bersejarah yang penting, melambangkan kekokohan dan keberanian para pahlawan yang berjuang dalam Pertempuran Surabaya.",
  ];

  // Mendefinisikan teks deskripsi awal
  String descText = "Tugu Pahlawan Surabaya merupakan sebuah monumen yang menjadi landmark penting di Kota Surabaya, Jawa Timur, Indonesia. Monumen ini didirikan sebagai penghormatan kepada para pahlawan yang gugur dalam Pertempuran Surabaya pada 10 November 1945. Berikut adalah ringkasan detail tentang Tugu Pahlawan Surabaya:";

  // Teks footer
  String footext = "Tugu Pahlawan Surabaya adalah simbol yang kuat dari semangat perjuangan dan pengorbanan para pahlawan dalam perjuangan kemerdekaan Indonesia. Monumen ini mengingatkan kita akan pentingnya memelihara dan menghormati warisan sejarah serta menghargai jasa-jasa pahlawan yang telah berjuang untuk kemerdekaan negara ini.";

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
            // Widget Text untuk menampilkan deskripsi awal
            Text(
              descText,
              // Menampilkan 2 baris teks deskripsi saat tidak di-expand
              maxLines: descTextShowFlag ? 50 : 2,
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
            // List View untuk menampilkan daftar detail
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        title[index],
                        style: const TextStyle(fontSize: 30),
                      ),
                      subtitle: Text('* ${desc[index]}'), // Menampilkan deskripsi dengan tanda bintang diawal
                      leading: CircleAvatar(
                        child: Text(
                          title[index][0], // Mengambil karakter pertama dari judul
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: title.length,
              ),
            ),
            // Widget Text untuk menampilkan teks footer
            Text(
              footext,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
