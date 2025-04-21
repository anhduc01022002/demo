import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/news_feed.dart';
import 'package:flutter_facebook/models/story_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<story_recycler> story = [];
  List<news_recycler> new_feed = [];

  void _getFeed() {
    new_feed = news_recycler.getNews();
  }

  void _getStory() {
    story = story_recycler.getStorySection();
  }

  @override
  Widget build(BuildContext context) {
    _getStory();
    _getFeed();

    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: buildAppBar(),
      body: Column(
        children: [
          // Status
          Status(),
          // Story
          SizedBox(height: 10),
          Story(),
          // Newsfeed
          SizedBox(height: 10),
          Newsfeed(),
        ],
      ),
    );
  }

  Container Newsfeed() {
    return Container(
          height: 480,
          color: Color(0xFFCCCCCC),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 350,
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
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          new_feed[index].content,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
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

  Container Story() {
    return Container(
      height: 180,
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 160,
            decoration: BoxDecoration(
              color: story[index].storyPath,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  bottom: 5,
                  child: Text(
                    story[index].name,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/image/john_doe.jpg",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: story.length,
      ),
    );
  }

  Container Status() {
    return Container(
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              decoration: BoxDecoration(),
              child: ClipOval(
                child: Image.asset(
                  "assets/image/john_doe.jpg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  hintText: "What are you thinking?",
                  hintStyle: TextStyle(color: Color(0xFF000000), fontSize: 15),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "assets/icon/photos.svg",
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
              ),
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
          "facebook",
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
            margin: EdgeInsets.all(3.0),
            width: 50,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icon/mess.svg",
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
