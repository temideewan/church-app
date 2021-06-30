import 'package:church/views/Events/Events.dart';
import 'package:church/views/Home/Home.dart';
import 'package:church/views/Inbox/Inbox.dart';
import 'package:church/views/Info/Info.dart';
import 'package:church/views/Profile/Profile.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final icon;

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Home(),
          icon: Icon(Icons.home, size: 25.0),
          title: Text("Home",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Info(),
          icon: Icon(Icons.favorite, size: 25.0),
          title: Text("Watchlist",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Events(),
          icon: Icon(Icons.gavel_rounded, size: 25.0),
          title: Text("Bid central",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Inbox(),
          icon: Icon(Icons.emoji_events_rounded, size: 25.0),
          title: Text("Winners",
              style: TextStyle(
                  fontFamily: 'History',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.more_vert, size: 25.0),
          title: Text("Actions",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
      ];
}
