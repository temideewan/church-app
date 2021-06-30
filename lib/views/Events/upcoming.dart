import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
        left: 30.0,
        top: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 135,
              child: Row(children: [
                Container(
                    width: 83,
                    height: 135,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorLibrary.dateContainer,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('15:00 AM',
                            style: Theme.of(context).textTheme.headline4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('24 SEPT',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        height: 1.3,
                                        fontSize: 16,
                                        letterSpacing: 0.5)),
                            Text('2020',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        height: 1.3,
                                        fontSize: 20,
                                        letterSpacing: 3.0,
                                        fontWeight: FontWeight.w900))
                          ],
                        )
                      ],
                    )),
                SizedBox(width: 16.0),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Prayer summit Day 5',
                              style: Theme.of(context).textTheme.headline2),
                          SizedBox(height: 7.0),
                          Container(
                            width: 200,
                            child: Text(
                                'Join us this friday as we lif up our voice to the king of kings in worship',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: ColorLibrary.textMuted)),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage(
                                      'assets/images/location.png',
                                    ),
                                    width: 10,
                                    height: 10),
                                SizedBox(width: 7.0),
                                Text('Church premises',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: ColorLibrary.primaryGreen))
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: [
                                Container(
                                    width: 168,
                                    height: 31,
                                    decoration: BoxDecoration(
                                        color: ColorLibrary.primaryGreen,
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    child: Center(
                                      child: Text('View Event',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button),
                                    ))
                                // the button,
                                // the switcher
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ])),
          Divider(
            color: ColorLibrary.dividerColor,
          )
        ],
      ),
    );
  }
}
