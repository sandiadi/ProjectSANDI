import 'package:flutter/material.dart';
import 'package:sandi/screen/fragment/home_fragment.dart';
import 'package:sandi/screen/fragment/kegiatan_fragment.dart';
import 'package:sandi/screen/fragment/kategori_fragment.dart';
import 'package:sandi/screen/login.dart';
import 'information_page.dart';
import 'location_page.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final String namevar;
  final drawerItems = [
    DrawerItem("Home", Icons.museum),
    DrawerItem("Kategori", Icons.category),
    DrawerItem("Kegiatan", Icons.info),
    DrawerItem("Logout", Icons.logout)
  ];

  HomePage({Key? key, required this.namevar}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;
  final List<bool> _bottomNavSelected = [true, false, false]; // Menyimpan status pemilihan pada bottom navigation

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const SecondFragment();
      case 1:
        return const ThirdFragment();
      case 2:
        return FourFragment();
      case 3:
        return const Login();
      default:
        return const Text("Error");
    }
  }

  void onItemTapped(int index) {
    setState(() {
      for (int i = 0; i < _bottomNavSelected.length; i++) {
        if (i == index) {
          _bottomNavSelected[i] = true; // Mengubah status ikon bottom navigation yang dipilih
        } else {
          _bottomNavSelected[i] = false; // Mengubah status ikon bottom navigation yang tidak dipilih
        }
      }

      if (index == 1) {
        _selectedDrawerIndex = 0; // Mengatur indeks item drawer menjadi 0 (Home)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LocationPage(child: "Location")),
        );
      } else if (index == 2) {
        _selectedDrawerIndex = 0; // Mengatur indeks item drawer menjadi 0 (Home)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FirstPage(child: "Information")),
        );
      } else {
        _selectedDrawerIndex = index; // Mengatur indeks item drawer sesuai dengan bottom navigation yang dipilih
      }
    });
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;

      for (int i = 0; i < _bottomNavSelected.length; i++) {
        if (i == _selectedDrawerIndex) {
          _bottomNavSelected[i] = true; // Mengubah status ikon bottom navigation yang dipilih
        } else {
          _bottomNavSelected[i] = false; // Mengubah status ikon bottom navigation yang tidak dipilih
        }
      }

      if (index == 3) {
        _selectedDrawerIndex = 0; // Mengatur indeks item drawer menjadi 0 (Home)
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        ListTile(
          leading: Icon(d.icon),
          title: Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () {
            _onSelectItem(i);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text(widget.namevar), accountEmail: null),
            Column(children: drawerOptions)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _bottomNavSelected[0] ? Colors.blue : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp, color: _bottomNavSelected[1] ? Colors.blue : Colors.black),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: _bottomNavSelected[2] ? Colors.blue : Colors.black),
            label: 'Information',
          ),
        ],
        currentIndex: _selectedDrawerIndex,
        onTap: onItemTapped,
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
