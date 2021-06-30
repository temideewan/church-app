import 'package:church/theme/colorLibrary.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  // @override

  // var dataManager = getIt<DataManager>();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF021B2B),
                size: 20.0,
              ),
            ),
            title: Text('Inbox',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF092C4C)))),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(children: [
              ListTile(
                horizontalTitleGap: 10.0,
                // isThreeLine: false,
                leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: ColorLibrary.primaryGreen,
                  ),
                  child: Icon(
                    Icons.mail,
                    color: Color(0xFFFFFFFF),
                    size: 20.0,
                  ),
                ),
                title: Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Join us this friday',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: ColorLibrary.textColorDark),
                        ),
                        Text(
                          '21, May 2020',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: ColorLibrary.textColorDark),
                        ),
                      ],
                    )),
                subtitle: Text(
                  'This friday we will be making some dsfgjsrhsfbzhetsgr.j sfhdsghbegxmafsl,ds kfbdnh;gdbfnfsb noise to God, Join us then',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: ColorLibrary.paraDark),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                selected: false,
              ),
              Divider(
                height: 1,
              )
            ]);
          },
        ));
  }
}
