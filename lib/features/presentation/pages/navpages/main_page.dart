import 'package:flutter/material.dart';
import 'package:online_shop_app/features/presentation/pages/navpages/bar_item_page.dart';
import 'package:online_shop_app/features/presentation/pages/navpages/my_page.dart';
import 'package:online_shop_app/features/presentation/pages/navpages/search_page.dart';
import 'house_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HousePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
       unselectedItemColor: Colors.green.shade800,  
        backgroundColor: Colors.black45,
      onTap: onTap,
      currentIndex:currentIndex,  
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded), label: 'Bar'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'MyPage'),
      ]),
    );
  }
}
