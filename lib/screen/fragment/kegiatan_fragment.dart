import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FourFragment extends StatelessWidget {

  List<String> image = [
    'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg',
    'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/10/20/10/58/elephant-2870777_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/09/08/17/32/humming-bird-439364_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/05/03/22/34/lion-3372720_960_720.jpg'];
  List<String> title = [
    'Peringatan dan Upacara',
    'Wisata dan Pendidikan',
    'Fotografi',
    'Rekreasi',
    'Pameran dan Kegiatan Budaya'
  ];
  List<String> desc = [
      'Tugu Pahlawan Surabaya sering digunakan sebagai tempat untuk upacara dan peringatan nasional yang diadakan setiap tahun pada tanggal 10 November. Upacara ini bertujuan untuk menghormati dan mengenang jasa-jasa para pahlawan yang gugur dalam Pertempuran Surabaya.',
      'Tugu Pahlawan Surabaya merupakan tujuan wisata sejarah yang populer di kota ini. Wisatawan dan pengunjung dapat mengunjungi monumen ini untuk mempelajari lebih lanjut tentang sejarah dan perjuangan kemerdekaan Indonesia. Terdapat papan informasi yang memberikan penjelasan tentang pertempuran dan peristiwa sejarah yang terkait.',
      'Tugu Pahlawan dan area sekitarnya menawarkan pemandangan yang indah dan memiliki daya tarik visual yang menarik.',
      'Pengunjung dapat menikmati waktu bersantai di taman, berjalan-jalan, atau berkumpul bersama keluarga dan teman-teman.',
      'Pameran ini dapat mencakup seni, sejarah, budaya, dan topik terkait lainnya yang berkaitan dengan perjuangan dan nilai-nilai yang diwakili oleh Tugu Pahlawan.'
      ];

  FourFragment({super.key});

  Widget card(String image, String title, String desc, BuildContext context) {
    return Card(
      color: Colors.yellow[50],
      elevation: 8.0,
      margin: const EdgeInsets.all(4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              image,
              height: MediaQuery.of(context).size.width * (3 / 4),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
            child: ExpansionTile(
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              children: <Widget>[
                Text(desc),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        ListView.builder(
          itemCount: image.length,
          itemBuilder: (BuildContext context, int index) {
            return card(image[index], title[index], desc[index], context);
          },
        ),
    );
  }

}