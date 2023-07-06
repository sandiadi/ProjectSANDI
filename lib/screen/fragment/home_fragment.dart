import 'package:flutter/material.dart';
import 'package:sandi/screen/art_list.dart';
import 'package:sandi/screen/detail_list.dart';

class SecondFragment extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SecondFragment({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailListPage(child: "Detail"),
              ),
            );
          },
          child: Container(
            height: 150,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.lime[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Detail',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ArtListPage(child: "Art"),
              ),
            );
          },
          child: Container(
            height: 150,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.lime[400],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Art',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lime[600],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Coming Soon',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
