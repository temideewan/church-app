import 'package:church/theme/colorLibrary.dart';
import 'package:church/views/Events/past.dart';
import 'package:church/views/Events/recurring.dart';
import 'package:church/views/Events/upcoming.dart';
import 'package:flutter/material.dart';

class EventsHome extends StatefulWidget {
  const EventsHome({Key? key}) : super(key: key);

  @override
  _EventsHomeState createState() => _EventsHomeState();
}

class _EventsHomeState extends State<EventsHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, isScrolled) {
            return <Widget>[
              SliverAppBar(
                forceElevated: isScrolled,
                pinned: true,
                floating: true,
                snap: true,
                collapsedHeight: 60,
                title: Text('Event',
                    style: Theme.of(context).appBarTheme.textTheme?.headline1),
                centerTitle: true,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(60.0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: 10.0, bottom: 15.0, right: 10.0),
                      padding: EdgeInsets.only(
                          top: 2, bottom: 2, left: 7, right: 7.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: TabBar(
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: ColorLibrary.primaryGreen,
                          unselectedLabelColor: Color(0xFF77838F),
                          indicatorPadding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x21000000),
                                    offset: Offset(0, 4.0),
                                    blurRadius: 5.0)
                              ]),
                          tabs: [
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Upcoming",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Recurring",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Past",
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
              controller: _tabController,
              children: [Upcoming(), Recurring(), Past()]),
        ));
  }
}
