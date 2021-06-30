import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          title: Text('Info Board',
              style: Theme.of(context).appBarTheme.textTheme?.headline1),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.only(top: 10, left: 12.0, right: 15),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 10.0,
              children: [
                Container(
                  width: 163,
                  height: 211,
                  decoration: BoxDecoration(
                      color: ColorLibrary.textMuted,
                      image: DecorationImage(
                          image: AssetImage('assets/images/worship.png')),
                      borderRadius: BorderRadius.circular(13)),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 9.0,
                          left: 7.0,
                          right: 7.0,
                          child: Container(
                            width: 147,
                            height: 115,
                            padding:
                                EdgeInsets.only(top: 20, left: 16, bottom: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 80,
                                    padding: EdgeInsets.only(left: 3.0),
                                    child: Text('Service Schedule',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2)),
                                SizedBox(height: 16.0),
                                Container(
                                  width: 128,
                                  height: 26,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5.0),
                                  decoration: BoxDecoration(
                                      color: ColorLibrary.primaryGreen,
                                      borderRadius: BorderRadius.circular(6.0)),
                                  child: Text('More detail',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          ?.copyWith(
                                              color: Colors.white,
                                              fontSize: 13)),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  width: 163,
                  height: 211,
                  decoration: BoxDecoration(
                      color: ColorLibrary.textMuted,
                      image: DecorationImage(
                          image: AssetImage('assets/images/calculator.png')),
                      borderRadius: BorderRadius.circular(13)),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 9.0,
                          left: 7.0,
                          right: 7.0,
                          child: Container(
                            width: 147,
                            height: 115,
                            padding:
                                EdgeInsets.only(top: 20, left: 16, bottom: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 80,
                                    padding: EdgeInsets.only(left: 3.0),
                                    child: Text('Account Detail',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2)),
                                SizedBox(height: 16.0),
                                Container(
                                  width: 128,
                                  height: 26,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5.0),
                                  decoration: BoxDecoration(
                                      color: ColorLibrary.primaryGreen,
                                      borderRadius: BorderRadius.circular(6.0)),
                                  child: Text('More detail',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          ?.copyWith(
                                              color: Colors.white,
                                              fontSize: 13)),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                )
              ],
            )));
  }
}
