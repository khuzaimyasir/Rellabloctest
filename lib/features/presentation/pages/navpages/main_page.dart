import 'package:flutter/material.dart';
import 'package:online_shop_app/2ndpage/home_layout.dart';
import 'package:online_shop_app/features/presentation/pages/blogs/screens/latestpost.dart';

import 'package:online_shop_app/features/presentation/pages/navpages/bar_item_page.dart';

import 'package:online_shop_app/features/presentation/pages/youtubepages/myvideos.dart';
import '../../../../2ndpage/hoome_page.dart';
import 'house_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HousePage(),
    HomeLayout(),
     LatestPost(),
    const MyVideos(),
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
        backgroundColor: Colors.grey.shade900,
         type: BottomNavigationBarType.fixed,
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
