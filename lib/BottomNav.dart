import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Profil.dart';
import 'auth/Login.dart';
import 'Pages/Beranda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Nav Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Beranda(),
    Profil(),
    Login(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static _BottomNavState? of(BuildContext context) =>
      context.findAncestorStateOfType<_BottomNavState>();

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: "Beranda",
            activeIcon: Icon(
              Icons.home,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined),
            label: 'Profil Desa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Masuk',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff01BB8A),
        onTap: _onItemTapped,
      ),
    );
  }
}
