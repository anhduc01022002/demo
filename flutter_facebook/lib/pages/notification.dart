import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/notification_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<notification_recycler> notice = [];

  void _getNotice() {
    notice = notification_recycler.getNotification();
  }

  @override
  Widget build(BuildContext context) {
    _getNotice();

    return Scaffold(appBar: buildAppBar(), body: buildBody());
  }

  Container buildBody() {
    return Container(
      color: Color(0xFFFFFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "News",
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 700,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  width: 400,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color(0xFF8ADAEC).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(notice[index].imagePath),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25, top: 20),
                            child: Text(
                              notice[index].content,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, top: 5),
                            child: Text(
                              notice[index].date,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemCount: notice.length,
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Notification",
          style: TextStyle(
            color: Color(0xFF0866ff),
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(3.0),
            width: 50,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icon/social_media.svg",
              height: 25,
              width: 25,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFe2e5ea),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 15)),
      ],
    );
  }
}
