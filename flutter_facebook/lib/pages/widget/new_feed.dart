import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/news_feed.dart';

class Newsfeed extends StatelessWidget {
  final List<news_recycler> newsFeed;
  const Newsfeed({super.key, required this.newsFeed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFCCCCCC),
      child: ListView.separated(
        itemCount: newsFeed.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => SizedBox(height: 10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final feed = newsFeed[index];
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
                          feed.avatarPath,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        feed.userName,
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF000000),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      feed.content,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Image.asset(feed.contentPath),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
