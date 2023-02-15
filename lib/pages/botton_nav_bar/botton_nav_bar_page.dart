import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/botton_nav_bar/bnb_page1.dart';
import 'package:flutter_playground/pages/botton_nav_bar/bnb_page2.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  var _indexNavBar = 0;
  static const _pages = [BnbPage1(), BnbPage2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botton Nav Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          _indexNavBar = value;
        }),
        currentIndex: _indexNavBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'Ticket',
          ),
        ],
      ),
      body: _pages[_indexNavBar],
    );
  }
}
