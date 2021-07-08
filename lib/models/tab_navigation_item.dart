import 'package:church/views/Events/EventsHome.dart';
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
          icon: Image(
              image: AssetImage('assets/images/tab_brand.png'),
              width: 28,
              height: 28),
          title: Text("Home",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Info(),
          icon: Icon(Icons.info_outline_rounded, size: 28.0),
          title: Text("Info",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: EventsHome(),
          icon: Icon(Icons.calendar_today_rounded, size: 25.0),
          title: Text("Events",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Inbox(),
          icon: Icon(Icons.mail_sharp, size: 25.0),
          title: Text("Inbox",
              style: TextStyle(
                  fontFamily: 'History',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.account_circle, size: 30.0),
          title: Text("Actions",
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ),
      ];
}
