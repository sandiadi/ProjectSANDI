import 'package:flutter/material.dart';

class ArtListPage extends StatefulWidget {
  final String child;

  const ArtListPage({Key? key, required this.child}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ArtListPageState createState() => _ArtListPageState();
}

class _ArtListPageState extends State<ArtListPage> {

  String descText = ".";
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.child),
      ),
        body: Center(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: const [
              Card(
                color: Colors.teal,
              ),
              Card(
                color: Colors.cyan,
              ),
              Card(
                color: Colors.yellowAccent,
              ),
              Card(
                color: Colors.deepOrange,
              ),
              Card(
                color: Colors.red,
              ),
              Card(
                color: Colors.yellow,
              ),
              Card(
                color: Colors.purpleAccent,
              ),
              Card(
                color: Colors.indigo,
              ),
              Card(
                color: Colors.black,
              ),
              Card(
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
    );
  }
}