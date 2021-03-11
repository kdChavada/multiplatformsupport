import 'package:desktop/UI/notifiactoin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Container(
                  height: h * 0.30,
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star_border),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notifications()));
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "My",
                              style: TextStyle(
                                  fontSize: 30.0, color: Color(0xff2b2624)),
                            ),
                            Text(
                              "Friend",
                              style: TextStyle(
                                  fontSize: 25.0, color: Color(0xffc0bec4)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffc0bec4),
                            ),
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffc0bec4),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Text(
                          "Recent",
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return RecentWidgets(
                          title: "Tom",
                          subtitle: "10 miles away",
                        );
                      }),
                ),
              ],
            ),
          ),
          Positioned(
            top: h * 0.87,
            child: Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              height: h * 0.1,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 70.0,
                  ),
                  Container(
                    height: h * 0.2,
                    width: w * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffe86e0d),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.barcode_viewfinder,
                        size: 35,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.group,
                    size: 70.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentWidgets extends StatelessWidget {
  final String title;
  final String subtitle;

  RecentWidgets({@required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.yellow,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$title",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            "$subtitle",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: h * .05,
                      width: w * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xffe1d7b3),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.message,
                          color: Color(0xffe19d40),
                        ),
                      ),
                    ),
                    Container(
                      height: h * .05,
                      width: w * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xffead7b3),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.call,
                          color: Color(0xffe19d40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
