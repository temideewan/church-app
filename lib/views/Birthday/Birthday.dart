import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class Birthday extends StatefulWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          title: Text('Birthday Board',
              style: Theme.of(context).appBarTheme.textTheme?.headline1),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 29, horizontal: 15),
          child: Column(
            children: [
              Wrap(
                spacing: 8.0,
                runSpacing: 30.0,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 104,
                          height: 137,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: ColorLibrary.lightGrey),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: 87,
                            child: Column(children: [
                              Text('Bro. James',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('17 may',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('Ushering/Departmennt',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ]))
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 104,
                          height: 137,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: ColorLibrary.lightGrey),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: 87,
                            child: Column(children: [
                              Text('Bro. James',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('17 may',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('Ushering/Departmennt',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ]))
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 104,
                          height: 137,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: ColorLibrary.lightGrey),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: 87,
                            child: Column(children: [
                              Text('Bro. James',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('17 may',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('Ushering/Departmennt',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ]))
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 104,
                          height: 137,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: ColorLibrary.lightGrey),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: 87,
                            child: Column(children: [
                              Text('Bro. James',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('17 may',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('Ushering/Departmennt',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ]))
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 104,
                          height: 137,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: ColorLibrary.lightGrey),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: 87,
                            child: Column(children: [
                              Text('Bro. James',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('17 may',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('Ushering/Departmennt',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ]))
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 104,
                          height: 137,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: ColorLibrary.lightGrey),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: 87,
                            child: Column(children: [
                              Text('Bro. James',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('17 may',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text('Ushering/Departmennt',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ]))
                      ]),
                ],
              )
            ],
          ),
        ));
  }
}
