import 'dart:math';

import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10, left: 12.0, right: 15),
            child: LayoutBuilder(
              builder: (_, constraints) {
                print(constraints.maxWidth);
                print(constraints.maxHeight);
                double maxWidth = constraints.maxWidth;
                double containerWidth = maxWidth / 2 - 5;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: containerWidth,
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
                                width: containerWidth - 19.0,
                                height: 115,
                                padding: EdgeInsets.only(
                                    top: 20, left: 16, bottom: 8, right: 10),
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
                                          borderRadius:
                                              BorderRadius.circular(6.0)),
                                      child: Text('More Detail',
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
                      width: containerWidth,
                      height: 211,
                      decoration: BoxDecoration(
                          color: ColorLibrary.textMuted,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/calculator.png')),
                          borderRadius: BorderRadius.circular(13)),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 9.0,
                              left: 7.0,
                              right: 7.0,
                              child: Container(
                                width: containerWidth - 19,
                                height: 115,
                                padding: EdgeInsets.only(
                                    top: 20, left: 16, bottom: 8, right: 16),
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
                                          borderRadius:
                                              BorderRadius.circular(6.0)),
                                      child: Text('More Detail',
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
                );
              },
            )));
  }
}
