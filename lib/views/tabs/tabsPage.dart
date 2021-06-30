import 'package:church/models/tab_navigation_item.dart';

import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(
            () => _currentIndex = index,
          );
        },
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              // ignore: deprecated_member_use
              title: tabItem.title,
            )
        ],
        selectedItemColor: ColorLibrary.primaryGreen,
        unselectedItemColor: Color(0xFFAFAFAF),
      ),
    );
  }
}
