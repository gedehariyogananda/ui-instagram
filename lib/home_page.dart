import 'package:flutter/material.dart';
import 'package:instagram_sliced/pages/add_story_page.dart';
import 'package:instagram_sliced/pages/index_page.dart';
import 'package:instagram_sliced/pages/profile_page.dart';
import 'package:instagram_sliced/pages/reel_page.dart';
import 'package:instagram_sliced/pages/search_post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNav = 0;

  void setSelectedNav(int index) {
    setState(() {
      _selectedNav = index;
    });
  }

  static final List<Widget> _children = [
    const IndexPage(),
    const SearchPostPage(),
    const AddStoryPage(),
    const ReelPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedNav],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNav,
        onTap: setSelectedNav,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 30,
              ),
              label: ""),
        ],
      ),
    );
  }
}
