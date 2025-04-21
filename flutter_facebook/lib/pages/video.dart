import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/news_feed.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<news_recycler> new_feed = [];

  void _getNewfeed() {
    new_feed = news_recycler.getNews();
  }

  @override
  Widget build(BuildContext context) {
    _getNewfeed();

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: buildAppBar(),
      body: Newsfeed(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Video",
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
        Padding(padding: EdgeInsets.only(right: 10)),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(1.0),
            width: 50,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icon/profile.svg",
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

  Container Newsfeed() {
    return Container(
      color: Color(0xFFCCCCCC),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SvgPicture.asset(
                          new_feed[index].avatarPath,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        new_feed[index].userName,
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      new_feed[index].content,
                      style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
                    ),
                  ),
                  SizedBox(height: 3),
                  Image.asset(new_feed[index].contentPath),
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: new_feed.length,
      ),
    );
  }
}
