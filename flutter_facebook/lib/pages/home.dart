import 'package:flutter/material.dart';
import 'package:flutter_facebook/models/news_feed.dart';
import 'package:flutter_facebook/models/story_model.dart';
import 'package:flutter_facebook/pages/widget/custom_app_bar.dart';
import 'package:flutter_facebook/pages/widget/new_feed.dart';
import 'package:flutter_facebook/pages/widget/status.dart';
import 'package:flutter_facebook/pages/widget/story.dart';

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
  void initState() {
    super.initState();
    _getStory();
    _getFeed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Status
            Status(),

            /// Story
            SizedBox(height: 10),
            Story(stories: story),

            /// Newsfeed
            SizedBox(height: 10),
            Newsfeed(newsFeed: new_feed),
          ],
        ),
      ),
    );
  }
}
