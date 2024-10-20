import 'package:flutter/material.dart';
import 'package:sport_store/core/constants/icons.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<MyBottomBar> {
   int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return bottomBar();
  }

  BottomNavigationBar bottomBar(){
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: AppIcons().home, label: "*"),
        BottomNavigationBarItem(icon: AppIcons().store, label: "*"),
        BottomNavigationBarItem(icon: AppIcons().settings, label: "*"),
      ],
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex: _currentIndex,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedFontSize: 25,
    );
  }
}
