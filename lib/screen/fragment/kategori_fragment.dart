import 'package:flutter/material.dart';

class ThirdFragment extends StatelessWidget {
  const ThirdFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        GridView(

            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: <Widget>[
              GridView.count(
                padding: const EdgeInsets.all(25),
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Description'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: const TextSpan(
                                      text: 'Tugu Pahlawan Surabaya merupakan sebuah monumen yang memiliki nilai sejarah yang tinggi.\n\n',
                                      style: TextStyle(color: Colors.black87),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Monumen ini menjadi saksi bisu dari peristiwa Pertempuran Surabaya pada 10 November 1945 dan mengingatkan kita akan perjuangan para pahlawan dalam mempertahankan kemerdekaan Indonesia',
                                        ),
                                        TextSpan(text: '.'),
                                      ],
                                    ),
                                  ),
                                  // _buildLogoAttribution(),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  // textColor: Theme.of(context).primaryColor,
                                  child: const Text('Okay, got it!'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      splashColor: Colors.blue,
                      child: const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                            Text("Monumen Sejarah", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Description'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: const TextSpan(
                                      text: 'Tugu Pahlawan Surabaya adalah simbol penting perjuangan dan semangat patriotisme rakyat Surabaya.\n\n',
                                      style: TextStyle(color: Colors.black87),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Monumen ini melambangkan kekokohan, keberanian, dan pengorbanan para pahlawan yang berjuang dalam pertempuran tersebut',
                                        ),
                                        TextSpan(text: '.'),
                                      ],
                                    ),
                                  ),
                                  // _buildLogoAttribution(),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  // textColor: Theme.of(context).primaryColor,
                                  child: const Text('Okay, got it!'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      splashColor: Colors.blue,
                      child: const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.new_releases, size: 70, color: Colors.redAccent,),
                            Text("Simbol Perjuangan", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Description'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: const TextSpan(
                                      text: 'Tugu Pahlawan Surabaya menjadi tempat peringatan yang penting bagi warga Surabaya dan seluruh Indonesia.\n\n',
                                      style: TextStyle(color: Colors.black87),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Setiap tahun, pada tanggal 10 November, upacara dan acara peringatan nasional diadakan di sekitar tugu untuk menghormati jasa-jasa para pahlawan',
                                        ),
                                        TextSpan(text: '.'),
                                      ],
                                    ),
                                  ),
                                  // _buildLogoAttribution(),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  // textColor: Theme.of(context).primaryColor,
                                  child: const Text('Okay, got it!'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      splashColor: Colors.blue,
                      child: const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.military_tech, size: 70, color: Colors.greenAccent,),
                            Text("Tempat Peringatan", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Description'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: const TextSpan(
                                      text: 'Tugu Pahlawan Surabaya juga menjadi salah satu destinasi wisata yang populer di kota ini.\n\n',
                                      style: TextStyle(color: Colors.black87),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Wisatawan dapat mengunjungi monumen ini untuk melihat arsitektur yang megah, menikmati lingkungan taman yang indah, serta mengenal lebih jauh tentang sejarah dan perjuangan kemerdekaan Indonesia',
                                        ),
                                        TextSpan(text: '.'),
                                      ],
                                    ),
                                  ),
                                  // _buildLogoAttribution(),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  // textColor: Theme.of(context).primaryColor,
                                  child: const Text('Okay, got it!'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      splashColor: Colors.blue,
                      child: const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.android, size: 70, color: Colors.blueGrey,),
                            Text("Destinasi Wisata", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              // Center(
              //   child:
              GridView.count(
                  padding: const EdgeInsets.all(25),
                  crossAxisCount: 1,
                  children: <Widget>[
                    Card(
                      // margin: const EdgeInsets.all(8),
                      child: InkWell(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Description'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      text: const TextSpan(
                                        text: 'Di sekitar Tugu Pahlawan Surabaya, terdapat Taman Makam Pahlawan yang menjadi tempat peristirahatan terakhir bagi para pahlawan yang gugur dalam Pertempuran Surabaya.\n\n',
                                        style: TextStyle(color: Colors.black87),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Tempat ini juga menjadi simbol penghormatan dan keabadian bagi para pahlawan yang telah berjuang demi kemerdekaan negara',
                                          ),
                                          TextSpan(text: '.'),
                                        ],
                                      ),
                                    ),
                                    // _buildLogoAttribution(),
                                  ],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    // textColor: Theme.of(context).primaryColor,
                                    child: const Text('Okay, got it!'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        splashColor: Colors.blue,
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.home, size: 70, color: Colors.blueAccent,),
                              Text("Tempat Pemakaman Pahlawan", style: TextStyle(fontSize: 17.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
              // )
            ]
        ));
  }

}