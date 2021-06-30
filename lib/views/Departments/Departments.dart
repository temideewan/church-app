import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class Departments extends StatefulWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  _DepartmentsState createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          title: Text('Departments',
              style: Theme.of(context).appBarTheme.textTheme?.headline1),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 29, horizontal: 15),
          child: Column(
            children: [
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
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
                        Text('Drama',
                            style: Theme.of(context).textTheme.bodyText1)
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
                        Text('Choir',
                            style: Theme.of(context).textTheme.bodyText1)
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
                        Text('Sunday school',
                            style: Theme.of(context).textTheme.bodyText1)
                      ]),
                ],
              )
            ],
          ),
        ));
  }
}
