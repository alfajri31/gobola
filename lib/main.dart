import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'live/live.dart';
import 'news/news.dart';

void main() {
  runApp(const MyApp());
}

//class whole layout
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//state whole layout
class _MyAppState extends State<MyApp> {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyNavbarWidget(),
    );
  }
}

//class navbar
class MyNavbarWidget extends StatefulWidget {
  const MyNavbarWidget({Key? key}) : super(key: key);

  @override
  State<MyNavbarWidget> createState() => _MyNavbarWidgetState();
}

//state navbar
class _MyNavbarWidgetState extends State<MyNavbarWidget> {
  //deklarasi valirabel
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    LivePage(),
    Text("TEST"),
    NewsPage(),
    Text("Favorit"),
    Text("Setelan")
  ];

  //method
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [HexColor("#359DD9"), HexColor("#013A67")])),
              height: 90),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: MenuNavbar(
                    icon: Icon(Icons.home),
                    text: Text(
                      "Match",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  label: '',
                  activeIcon: MenuNavbarHover(
                    icon: Icon(Icons.home),
                    text: Text(
                      "Match",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: MenuNavbar(
                    icon: Icon(Icons.search),
                    text: Text(
                      "Cari",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  label: '',
                  activeIcon: MenuNavbarHover(
                    icon: Icon(Icons.search),
                    text: Text(
                      "Cari",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: MenuNavbar(
                    icon: Icon(Icons.newspaper),
                    text: Text(
                      "Berita",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  label: '',
                  activeIcon: MenuNavbarHover(
                    icon: Icon(Icons.newspaper),
                    text: Text(
                      "Berita",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: MenuNavbar(
                    icon: Icon(Icons.favorite),
                    text: Text(
                      "Favorit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  label: '',
                  activeIcon: MenuNavbarHover(
                    icon: Icon(Icons.favorite),
                    text: Text(
                      "Favorit",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: MenuNavbar(
                    icon: Icon(Icons.kebab_dining_outlined),
                    text: Text(
                      "Setelan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  label: '',
                  activeIcon: MenuNavbarHover(
                    icon: Icon(Icons.kebab_dining_outlined),
                    text: Text(
                      "Setelan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
            backgroundColor: Colors.transparent,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: onItemTapped,
          )
        ],
      ),
    );
  }
}

//state hover di menu navbar
class MenuNavbarHover extends StatelessWidget {
  final Icon icon;
  final Text text;
  const MenuNavbarHover({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20.0),
        color: Colors.transparent,
        child: Column(
          children: [icon, text],
        ));
  }
}

class MenuNavbar extends StatelessWidget {
  final Icon icon;
  final Text text;
  const MenuNavbar({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20.0),
        color: Colors.transparent,
        child: Column(children: [
          icon,
          text,
        ]));
  }
}
