import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../constants/global_colors.dart';
import '../../features/home/screens/home_screen.dart';
import 'custom_drawer.dart';

class CustomNabBar extends StatefulWidget {
  const CustomNabBar({Key? key}) : super(key: key);

  @override
  State<CustomNabBar> createState() => _CustomNabBarState();
}

class _CustomNabBarState extends State<CustomNabBar> {
  int _indexPage = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const Center(child: Text("Search"),),
    const Center(child: Text("Favorite"),),
    const Center(child: Text("AddPosts"),),

  ];
  void selectPageIndex(int page){
    setState(() {
      _indexPage=page;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_indexPage],
     bottomNavigationBar:Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.purple.shade300),
              color : Colors.transparent
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            elevation: 0.0,
            mouseCursor: MouseCursor.defer,
          currentIndex: _indexPage,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black12,
          backgroundColor: Colors.transparent,
          iconSize: 24,
          onTap: selectPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon:  Icon(FontAwesomeIcons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon:  Icon(FontAwesomeIcons.search),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon:  Icon(Icons.favorite),
                label: "Favorite"
            ),
            BottomNavigationBarItem(
                icon:  Icon(Icons.add_box),
                label: "Profile"
            ),

          ],

        ),
      ),

      ),
    );
  }
}
