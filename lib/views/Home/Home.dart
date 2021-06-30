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
          title: Text('Event',
              style: Theme.of(context).appBarTheme.textTheme?.headline1),
          centerTitle: true,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
                top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    height: 214.0,
                    decoration: BoxDecoration(
                        color: ColorLibrary.primaryGreen,
                        borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 165.0,
                            padding:
                                EdgeInsets.only(top: 29, left: 24, bottom: 15),
                            decoration: BoxDecoration(
                                color: ColorLibrary.primaryGreenDark,
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('The Chosen Hands Drama',
                                    style:
                                        Theme.of(context).textTheme.headline1!),
                                SizedBox(height: 5.0),
                                Container(
                                  width: 230.0,
                                  child: Text(
                                      'Tag hsjdfs dhfjsd fhsjd fsdhf jshjdf jsdjhf sdjfhj',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: ColorLibrary.textMutedDark,
                                              fontSize: 12.0)),
                                ),
                              ],
                            )),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 20.0, top: 17.0),
                            child: Row(
                              children: [
                                Image(
                                  width: 20,
                                  height: 20,
                                  image: AssetImage(
                                      'assets/images/normal_mic.png'),
                                ),
                                SizedBox(width: 7.0),
                                Text('Hod: Bro. sdsd',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 12, color: Colors.white))
                              ],
                            ))
                      ],
                    )),
                SizedBox(height: 32),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('About the department',
                                  style: Theme.of(context).textTheme.headline3),
                            ]),
                        SizedBox(height: 20.0),
                        RichText(
                            text: TextSpan(
                                text:
                                    'Maecenas faucibus mollis interdum. Nullam quis risus eget urna mollis ornare vel eu leo, lenean eli lacinia bibendum nulla sed consectetur quis risus eget urna urna mollis ornare vel eu leo.. ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(height: 1.5, letterSpacing: 0.5),
                                children: [
                              TextSpan(
                                  text: 'read more',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          height: 1.5,
                                          letterSpacing: 0.5,
                                          color: Colors.blue))
                            ])),
                      ],
                    )),
                SizedBox(height: 19.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('Next Schedules',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline3),
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10.0, right: 50.0, left: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 1.5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      width: 15.0,
                                      height: 15.0,
                                      image: AssetImage(
                                          'assets/images/calendar.png'),
                                    ),
                                    SizedBox(width: 9.0),
                                    Text('Jan 09, 2021',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.5,
                                                fontSize: 10))
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    width: 15.0,
                                    height: 15.0,
                                    image:
                                        AssetImage('assets/images/clock.png'),
                                  ),
                                  SizedBox(width: 9.0),
                                  Text('11:30 am - 12.15 pm',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5,
                                              fontSize: 10))
                                ],
                              ),
                            ]),
                        SizedBox(height: 16.0),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 1.5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image(
                                      width: 15.0,
                                      height: 15.0,
                                      image:
                                          AssetImage('assets/images/video.png'),
                                    ),
                                    SizedBox(width: 9.0),
                                    Text('Virtual Event',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff3E3962),
                                                fontSize: 10)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image(
                                    width: 15.0,
                                    height: 15.0,
                                    image:
                                        AssetImage('assets/images/clock.png'),
                                  ),
                                  SizedBox(width: 9.0),
                                  Text('4 Hours Duration',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff3E3962),
                                              fontSize: 10))
                                ],
                              )
                            ])
                      ],
                    )),
                Expanded(child: SizedBox()),
                Container(
                    width: double.infinity,
                    height: 57,
                    decoration: BoxDecoration(
                        color: ColorLibrary.primaryGreen,
                        borderRadius: BorderRadius.circular(17.5)),
                    child: Center(
                        child: Text('Set Up Reminder',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.white, fontSize: 17))))
              ],
            )));
  }
}
