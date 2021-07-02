import 'package:church/theme/colorLibrary.dart';
import 'package:church/views/Inbox/Inbox.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }
  // var dataManager = getIt<DataManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            title: Text('Profile',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF000000)))),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                  padding: EdgeInsets.only(top: 45.0, left: 15.0, bottom: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Temidayo',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 21.0,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        color: ColorLibrary.primaryGreenDark)),
                                SizedBox(height: 2.0),
                                Text('John@gmail.com',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: ColorLibrary.textColor)),
                                Text('08188154030',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: ColorLibrary.textColor))
                              ],
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text("Edit",
                                        style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xFF000000))))),
                          ],
                        )
                      ])),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Inbox(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      height: 50.0,
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 14, left: 20, bottom: 18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Inbox',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    color: ColorLibrary.primaryGreenDark)),
                            IconButton(
                                icon: Icon(Icons.arrow_forward_ios,
                                    color: Colors.black, size: 15.0),
                                padding: EdgeInsets.only(bottom: 20.0),
                                onPressed: () {})
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          height: 50.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14, left: 20, bottom: 18.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('FAQs',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: ColorLibrary.primaryGreenDark)),
                                IconButton(
                                    icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 15.0),
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.0),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          height: 50.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14, left: 20, bottom: 18.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Terms of Use',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: ColorLibrary.primaryGreenDark)),
                                IconButton(
                                    icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 15.0),
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.0),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          height: 50.0,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 14, left: 20, bottom: 18.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Privacy Policy',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: ColorLibrary.primaryGreenDark)),
                                IconButton(
                                    icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 15.0),
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48.0),
                  Column(children: [
                    GestureDetector(
                      onTap: () async {
                        // await UserPreferences.removeUser();
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => Login(isModal: true)));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        height: 50.0,
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 14, left: 20, bottom: 18.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sign out',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      color: ColorLibrary.primaryGreenDark)),
                              IconButton(
                                  icon: Icon(Icons.arrow_forward_ios,
                                      color: Colors.black, size: 15.0),
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  onPressed: () {})
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              )
            ]))));
  }
}
