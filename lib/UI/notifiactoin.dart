import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: 30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(
              CupertinoIcons.check_mark,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                "Notification",
                style: TextStyle(
                  color: Color(0xff2b2624),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (context, c) {
                  return NotificationWidgets(
                    name: "Tom Replayed",
                    subtitle: "21 minit ago",
                    prise: "\$7.50",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationWidgets extends StatelessWidget {
  final String name;
  final String subtitle;
  final String prise;

  NotificationWidgets(
      {@required this.name, @required this.subtitle, @required this.prise});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$name",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Text(
                            "$subtitle",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "$prise",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
      ],
    );
  }
}
