import 'package:church/models/homeItems.dart';
import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeItem> items = [
    new HomeItem(image: 'assets/images/completed.png', text: 'Check in'),
    new HomeItem(image: 'assets/images/white_i.png', text: 'Info board'),
    new HomeItem(image: 'assets/images/calendar_events.png', text: 'Events'),
    new HomeItem(image: 'assets/images/sax.png', text: '1440'),
    new HomeItem(image: 'assets/images/cake.png', text: 'Birthday Board'),
    new HomeItem(image: 'assets/images/pulpit.png', text: 'Sermons'),
    new HomeItem(image: 'assets/images/department.png', text: 'Departments'),
    new HomeItem(image: 'assets/images/help.png', text: 'Help?'),
  ];

  bool isFalse = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isLandScape = width > 600;

    print(height);
    print(width);
    return Scaffold(
        backgroundColor: ColorLibrary.primaryGreen,
        body: SingleChildScrollView(
          primary: true,
          child: Container(
            // constraints: BoxConstraints.expand(),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                      color: ColorLibrary.primaryGreen,
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      child: Stack(
                        children: [
                          Positioned(
                              top: isLandScape ? -175 : 1,
                              right: isLandScape ? -20 : -40,
                              child: Image(
                                  width: isLandScape
                                      ? MediaQuery.of(context).size.height - 110
                                      : MediaQuery.of(context).size.width - 120,
                                  height: isLandScape
                                      ? MediaQuery.of(context).size.width - 170
                                      : MediaQuery.of(context).size.width - 170,
                                  image:
                                      AssetImage('assets/images/Graph.png'))),
                          Positioned(
                              top: 40,
                              right: 25,
                              child: Image(
                                  width: 30,
                                  height: 30,
                                  image: AssetImage('assets/images/bell.png'))),
                          Positioned(
                              top: 45,
                              left: 28,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24)),
                                width: 52,
                                height: 52,
                                child: Image(
                                    width: 30,
                                    height: 30,
                                    image: AssetImage(
                                        'assets/images/brand_logo.png')),
                              )),
                          Positioned(
                            top: 110,
                            left: 30,
                            right: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              // padding: EdgeInsets.only(right: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Welcome Morris',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .copyWith(
                                              fontSize: 13,
                                              color: Color(0xffB2E5F5)),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                          'Welcome to Goshen the Choice land',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0,
                                          top: 8.0,
                                          right: 10.0,
                                          bottom: 8.0),
                                      child: Divider(color: Colors.black54),
                                    ),
                                    Wrap(
                                      spacing: 33,
                                      runSpacing: 12,
                                      children: [
                                        for (HomeItem item in items)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 45,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: ColorLibrary
                                                        .primaryGreenDark,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: Center(
                                                  child: Image(
                                                      width: 25,
                                                      height: 25,
                                                      image: AssetImage(
                                                          item.image)),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                width: 50,
                                                child: Text(item.text,
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1!
                                                        .copyWith(
                                                            color:
                                                                Colors.white)),
                                              )
                                            ],
                                          )
                                      ],
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      )),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        constraints: BoxConstraints.tightForFinite(),
                        padding: EdgeInsets.only(top: 22, left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height - 480,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Upcoming Events',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                  ),
                                  Text(
                                    'View all',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 12),
                                  )
                                ]),
                            SizedBox(height: 20.0),
                            Container(
                              height: 240,
                              padding: EdgeInsets.only(bottom: 5.0),
                              width: double.infinity,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  primary: false,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        width: double.infinity,
                                        height: 145,
                                        child: Row(children: [
                                          Container(
                                              width: 83,
                                              height: 135,
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: ColorLibrary
                                                      .dateContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('15:00 AM',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline4),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text('24 SEPT',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .caption!
                                                              .copyWith(
                                                                  height: 1.3,
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.5)),
                                                      Text('2020',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .caption!
                                                              .copyWith(
                                                                  height: 1.3,
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      3.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900))
                                                    ],
                                                  )
                                                ],
                                              )),
                                          SizedBox(width: 16.0),
                                          Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Prayer summit Day 5',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline2),
                                                    SizedBox(height: 5.0),
                                                    Container(
                                                      width: 200,
                                                      child: Text(
                                                          'Join us this friday as we lif up our voice to the king of kings in worship',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .bodyText1!
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: ColorLibrary
                                                                      .textMuted)),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image(
                                                            image: AssetImage(
                                                              'assets/images/location.png',
                                                            ),
                                                            width: 10,
                                                            height: 10),
                                                        SizedBox(width: 7.0),
                                                        Text('Church premises',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText1!
                                                                .copyWith(
                                                                    color: ColorLibrary
                                                                        .primaryGreen))
                                                      ],
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Row(
                                                      children: [
                                                        Container(
                                                            width: 148,
                                                            height: 31,
                                                            decoration: BoxDecoration(
                                                                color: ColorLibrary
                                                                    .primaryGreen,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0)),
                                                            child: Center(
                                                              child: Text(
                                                                  'View Event',
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .button),
                                                            )),
                                                        SizedBox(width: 3.0),
                                                        // the button,
                                                        // the switcher
                                                        FlutterSwitch(
                                                          activeColor:
                                                              ColorLibrary
                                                                  .toggleGreen,
                                                          width: 56.0,
                                                          height: 24.0,
                                                          toggleSize: 25.0,
                                                          activeToggleColor:
                                                              Colors.white,
                                                          inactiveToggleColor:
                                                              ColorLibrary
                                                                  .toggleGreen,
                                                          value: isFalse,
                                                          inactiveColor:
                                                              Color(0xffEDF6FF),
                                                          borderRadius: 30.0,
                                                          padding: 4.0,
                                                          onToggle: (val) {
                                                            setState(() {
                                                              isFalse = val;
                                                            });
                                                          },
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ]));
                                  },
                                  separatorBuilder: (context, _) => Divider(
                                        height: 30,
                                        color: ColorLibrary.dividerColor,
                                      ),
                                  itemCount: 3),
                            )
                          ],
                        )))
              ],
            ),
          ),
        ));
  }
}
